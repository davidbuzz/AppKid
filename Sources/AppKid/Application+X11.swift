//
//  Application+X11.swift
//  AppKid
//
//  Created by Serhii Mumriak on 1/2/20.
//

import Foundation
import CoreFoundation
import CX11.Xlib
import CX11.X

#if os(Linux)
import CEpoll
import Glibc
#endif

internal let helloWorldString = "Hello, world!"

internal extension Application {
    func setupX() {
        #if os(Linux)
        XInitThreads()
        
        x11EpollFileDecriptor = epoll_create1(Int32(EPOLL_CLOEXEC))
        if x11EpollFileDecriptor == -1  {
            fatalError("Failed to create epoll file descriptor")
        }
        
        var x11EpollEvent = epoll_event()
        x11EpollEvent.events = EPOLLIN.rawValue | EPOLLET.rawValue
        x11EpollEvent.data.fd = x11FileDescriptor
        
        guard epoll_ctl(x11EpollFileDecriptor, EPOLL_CTL_ADD, x11FileDescriptor, &x11EpollEvent) == 0 else {
            close(x11EpollFileDecriptor)
            fatalError("Failed to add file descriptor to epoll")
        }
        
        var x11RunLoopSourceContext = CFRunLoopSourceContext1()
        x11RunLoopSourceContext.version = 1
        x11RunLoopSourceContext.info = Unmanaged.passRetained(self).toOpaque()
        
        x11RunLoopSourceContext.getPort = {
            if let info = $0 {
                let application: Application = Unmanaged.fromOpaque(info).takeUnretainedValue()
                return UnsafeMutableRawPointer(bitPattern: Int(application.x11EventFileDescriptor))
            } else {
                return UnsafeMutableRawPointer(bitPattern: Int(-1))
            }
        }
        
        x11RunLoopSourceContext.perform = {
            if let info = $0 {
                let application: Application = Unmanaged.fromOpaque(info).takeUnretainedValue()
                application.processX11EventsQueue()
            }
        }
        
        let x11RunLoopSourceContextPointer = UnsafeMutableRawPointer(&x11RunLoopSourceContext).bindMemory(to: CFRunLoopSourceContext.self, capacity: 1)
        
        let x11RunLoopSource = CFRunLoopSourceCreate(kCFAllocatorDefault, 0, x11RunLoopSourceContextPointer)
        
        CFRunLoopAddSource(RunLoop.current.getCFRunLoop(), x11RunLoopSource, CFRunLoopCommonModesConstant)
        
        x11EpollThread.start()
        #endif
    }
    
    func processX11EventsQueue() {
        var x11Event = CX11.XEvent()
        while XPending(display) != 0 {
            XNextEvent(display, &x11Event)
            
            guard let windowIndex = windows.firstIndex(where: { $0.x11Window == x11Event.xany.window }) else {
                continue
            }
            
            let window = windows[windowIndex]
            
            let _ = Event(x11Event: x11Event)
            switch x11Event.type {
            case Expose:
                XFillRectangle(display, window.x11Window, screen.pointee.default_gc, 20, 20, 10, 10)
                XDrawString(display, window.x11Window, screen.pointee.default_gc, 10, 70, helloWorldString, Int32(helloWorldString.count))
                
            case KeyPress:
                break
                
            case KeyRelease:
                break
                
            case ButtonPress:
                break
                
            case ButtonRelease:
                break
                
            case ClientMessage:
                if CX11.Atom(x11Event.xclient.data.l.0) == x11WMDeleteWindowAtom {
                    windows.remove(at: windowIndex)
                }
                
            default:
//                debugPrint("Unexpected event left unhandled")
                break
            }
        }
    }
    
    func addSimpleWindow() {
        let window = Window(contentRect: CGRect(x: 10.0, y: 10.0, width: 200.0, height: 100.0))
        
        windows.append(window)
    }
    
    func addDebugRunLoopObserver() {
        #if os(Linux)
        let observer = CFRunLoopObserverCreateWithHandler(kCFAllocatorDefault, CFOptionFlags(kCFRunLoopAllActivities), true, 0) { _, activity in
            switch Int(activity) {
            case kCFRunLoopEntry:
                debugPrint("Run Loop Activity kCFRunLoopEntry")
            case kCFRunLoopBeforeTimers:
                debugPrint("Run Loop Activity kCFRunLoopBeforeTimers")
            case kCFRunLoopBeforeSources:
                debugPrint("Run Loop Activity kCFRunLoopBeforeSources")
            case kCFRunLoopBeforeWaiting:
                debugPrint("Run Loop Activity kCFRunLoopBeforeWaiting")
            case kCFRunLoopAfterWaiting:
                debugPrint("Run Loop Activity kCFRunLoopAfterWaiting")
            case kCFRunLoopExit:
                debugPrint("Run Loop Activity kCFRunLoopExit")
            case kCFRunLoopAllActivities:
                debugPrint("Run Loop Activity kCFRunLoopAllActivities")
            default:
                debugPrint("Run Loop Activity UNKNOWN")
            }
        }
        
        CFRunLoopAddObserver(RunLoop.current.getCFRunLoop(), observer, CFRunLoopCommonModesConstant)
        #endif
    }
    
    func pollForX11Events() {
        if Thread.isMainThread {
            fatalError("Polling of X11 events is not allowed on main thread. Never. It's an infinite loop, you don't want to block your main thread, do you?")
        }
        #if os(Linux)
        var awokenEvent = epoll_event()
        var one: UInt64 = 1
        while true {
            let result = CEpoll.epoll_wait(x11EpollFileDecriptor, &awokenEvent, 1, -1)
            if (result == 0 || result == -1) { continue }
            CEpoll.write(x11EventFileDescriptor, &one, 8)
        }
        #endif
    }
}
