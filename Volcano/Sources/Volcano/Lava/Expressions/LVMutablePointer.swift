//
//  LVMutablePointer.swift
//  Volcano
//
//  Created by Serhii Mumriak on 16.07.2022
//

import TinyFoundation
import CVulkan

@inlinable @inline(__always)
public func <- <Struct: InitializableWithNew, Value>(path: WritableKeyPath<Struct, UnsafeMutablePointer<Value>?>, value: UnsafeMutablePointer<Value>) -> LVMutablePointer<Struct, Value> {
    LVMutablePointer(path, value)
}

public struct LVMutablePointer<Struct: InitializableWithNew, Value>: LVPath {
    public typealias ValueKeyPath = Swift.WritableKeyPath<Struct, UnsafeMutablePointer<Value>?>

    @usableFromInline
    internal let valueKeyPath: ValueKeyPath

    @usableFromInline
    internal let pointer: UnsafeMutablePointer<Value>?

    public init(_ valueKeyPath: ValueKeyPath, _ pointer: UnsafeMutablePointer<Value>?) {
        self.valueKeyPath = valueKeyPath
        self.pointer = pointer
    }

    @inlinable @inline(__always)
    public func withApplied<R>(to result: inout Struct, tail: ArraySlice<any LVPath<Struct>>, _ body: (UnsafeMutablePointer<Struct>) throws -> (R)) rethrows -> R {
        result[keyPath: valueKeyPath] = pointer
        return try withAppliedDefault(to: &result, tail: tail, body)
    }
}
