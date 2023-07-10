# **AppKid**

![Platforms](https://img.shields.io/badge/platforms-linux%20x86__64%20|%20%20linux%20arm64-informational)
![License](https://img.shields.io/github/license/smumriak/AppKid)
![Test](https://img.shields.io/github/actions/workflow/status/smumriak/appkid/test-everything.yml?label=test%20x86_64)

**AppKid** is an open-source Application Development Framework heavily inspired by Apple's AppKit and UIKit. It was started as a way to have convenient SDK to build UI applications for X11 enabled GNU/Linux environment. It is written completely in swift, using Vulkan as rendering backend and relies on X11 for window management and user input events.

<p align="center">
	<img src="https://user-images.githubusercontent.com/4306641/177050935-93acbfca-3e1a-4e00-bdf2-fbbac5ad3ed9.png?raw=true" alt="Hello World with AppKid">
</p>

```swift
import AppKid
import Foundation

class RootViewController: ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let label = Label(frame: CGRect(x: 0.0, y: 0.0, width: 320.0, height: 44.0))
        label.text = "Hello World"
        view.addSubview(label)
        label.center = CGPoint(x: 160.0, y: 120.0)
    }
}

@main
final class AppDelegate: ApplicationDelegate {
    func application(_: Application, didFinishLaunchingWithOptions _: [Application.LaunchOptionsKey: Any]? = nil) -> Bool {
        let window = Window(contentRect: CGRect(x: 0.0, y: 0.0, width: 320.0, height: 240.0))
        window.title = "Hello World"
        window.rootViewController = RootViewController()
        return true
    }
}
```

## Getting started with **AppKid** in your project
**AppKid** depends on mulitple opensource projects. Below are the instructrions on how to set those up for Debian-based Linux distributions. RPM-Based instructions will be added some time later.

To use this in your own project see also [Documentation/GETTING_STARTED.md](Documentation/GETTING_STARTED.md)

- <details>
	<summary>Swift language</summary>
	
	- Get tarball package from [swift.org](https://swift.org/getting-started/#installing-swift), unpack it to some system directory like `/opt/swift` and update global `$PATH` variable
		```bash
		sudo nano /etc/profile.d/10swift_path.sh
		```
		paste this
		```bash
		export PATH=/opt/swift/usr/bin:"${PATH}"`
		```
		where `/opt/swift` is a path to your swift toolchain
	
	- Alternatively install swiftlang package via [swiftlang builds](https://www.swiftlang.xyz/) (does not require extenting `$PATH` variable)
		```bash
		wget -qO - https://archive.swiftlang.xyz/install.sh | sudo bash
		sudo apt install swiftlang -y
		```
  </details>
- <details>
    <summary>Vulkan SDK</summary>

	- Vulkan SDK from LunarG repository
		LunarG is using deprecated apt-key to verify signature so this repo provides more modern and safe configuration via `SupportingFiles`
		```bash
		wget -qO - https://packages.lunarg.com/lunarg-signing-key-pub.asc | gpg --dearmor | sudo tee -a /usr/share/keyrings/lunarg-archive-keyring.gpg
		sudo wget -q https://raw.githubusercontent.com/smumriak/AppKid/main/SupportingFiles/lunarg-vulkan-jammy.list -O /etc/apt/sources.list.d/lunarg-vulkan-jammy.list
		sudo apt update
		sudo apt install -y vulkan-sdk
		```
	- Alternativelly you can try to install Vulkan SDK from tarballs provided by LunarG or if you are using Debian 12 and newer or Ubuntu 22.04 and newer you can substitute Vulkan SDK from LunarG by installing packages form distro's repository
		```
		sudo apt install -y \
			libvulkan-dev \
			vulkan-validationlayers \
			glslc
		```
		But you will have to manually install `glslc` compiler from Gooogle's shaderc project located [here](https://github.com/google/shaderc).
  </details>
- <details>
	<summary>System libraries</summary>

	```bash
	sudo apt install -y \
		libx11-dev \
		libxi-dev \
		libwayland-dev \
		libcairo2-dev \
		libpango1.0-dev \
		libglib2.0-dev
	```
  </details>
- <details>
	<summary>libclang for shaders preprocessing</summary>

	> **NOTE:** This is now a required dependency since shader compilation is now part of the pipeline

	AppKid is using its own GLSL dialect for internal shaders. It is preprocessed via custom tool that is build on top of libclang.
	
	Install libclang itself
	```bash
	sudo apt install -y \
		libclang-15-dev 
	```
	Install provided package config file for libclang because llvm does not provide one:
	```bash
	sudo mkdir -p /usr/local/lib/pkgconfig
	sudo wget -q https://raw.githubusercontent.com/smumriak/AppKid/main/SupportingFiles/clang.pc -O /usr/local/lib/pkgconfig/clang.pc
	```
	If you are going to install different version of libclang - adjust clang.pc accordingly.
  </details>
- <details>
	<summary>libpython3.8 for debugger support</summary>

	> **NOTE:** If you have no intention of debugging Swift code you skip this step

	Swifts LLDB is built using libpython3.8. On modern system you will probably meet libpython3.9 or higher. Just make a symbolic link from new version to old version. Tho this is not ideal and will break with every major distribution update for you
	```bash
	cd /usr/lib/x86_64-linux-gnu
	sudo ln -sf libpython3.10.so libpython3.8.so.1.0
	```
	where `libpython3.10.so` is currently installed version and libpython3.8.so.1.0 is filename against which Swifts LLDB was built.
  </details>
After the necessary dependencies were set up just add this package in your SwiftPM manifest file as a dependency and add **AppKid** product as a dependency to your target:
```swift
// swift-tools-version: 5.8
import PackageDescription

let package = Package(
  name: "MyApp",
  dependencies: [
    .package(
	  url: "https://github.com/smumriak/AppKid", 
	  branch: "main"
	),
  ],
  targets: [
    .executableTarget(
      name: "MyApp",
      dependencies: [
        .product(name: "AppKid", package: "AppKid")
      ])
  ]
)
```

## **Contributing**
Contributions are very welcome. Before you dive in it is recommended to [setup your local development environment](#development).

You can use provided sample application called **AppKidDemo**, it is located in this repository and is one of the products. **AppKidDemo** is written in swift and provides a sample environment for **AppKid** development. 

https://user-images.githubusercontent.com/4306641/177026612-370dbd73-b414-4551-9341-9bd580389d53.mp4

https://user-images.githubusercontent.com/4306641/177026512-4524bd22-895b-4205-ad9c-5b29251fdfa0.mp4

## Development
Before jumping straight into writing code there is some development setup required. Below are instructions on how to setup development environment for Debian-based Linux or for macOS
#### Debian-based Linux
- Follow steps from [Getting started with **AppKid** in your project](#getting-started-with-appkid-in-your-project) to get the dependencies installed
- That's it

#### **macOS**
- Xcode via [AppStore](https://apps.apple.com/us/app/xcode/id497799835) or [developer.apple.com](https://developer.apple.com/download/more/)
- <details>
    <summary>XQuartz</summary>
	
    ```bash
    brew install xquartz
    ```
	</details>
- Vulkan SDK via [lunarg.com](https://vulkan.lunarg.com/sdk/home#mac)
- <details>
    <summary>PKG_CONFIG_PATH global variable</summary>

	Update global `PKG_CONFIG_PATH` variable so command line tools would have proper pkg-config search path:
	```bash
	sudo nano /etc/profile
	````
	paste this:
	```bash
	export PKG_CONFIG_PATH="/opt/X11/lib/pkgconfig:/usr/local/lib/pkgconfig:/usr/local/lib:$PKG_CONFIG_PATH"
	```
    Add a launchctl agent that will update environment variables per user session so Xcode could find all the pkg-config files needed to properly build projects:
	```bash
	mkdir -p ~/Library/LaunchAgents
	curl -s https://raw.githubusercontent.com/smumriak/AppKid/main/SupportingFiles/environment.plist -o ~/Library/LaunchAgents/environment.plist
	launchctl load -w ~/Library/LaunchAgents/environment.plist
	```
	> **NOTE:** This file is not backed up by TimeMachine, so you probably want to extend this environment variable for command line tools in some other way

	</details>
- <details>
    <summary>Install other project dependencies:</summary>

	```bash
	brew install \
		pkg-config \
		cairo \
		glib \
		pango
	```
	</details>

### Building and running
All projects in this repository are using [Swift Package Manager](https://www.swift.org/package-manager/) exclusivelly. This means that building top level product is as easy as this
> **NOTE:** Since this is a monorepo for multiple projects at the moment it is recommended to use dedicated build directories by adding --build-path argument to swift commands

> **WARNING:** Running of apps built with **AppKid** on macOS is not possible and there's no plan to make it so

```bash
swift build --product AppKid
```
Same with running
```bash
swift run --product AppKid
```
There are additional scripts under `Utilities` directory with pre-defined building, running, cleaning and other commands.
> **WARNING:** Building on macOS is broken at the moment because of the issue of using vulkan-sdk as C library in pure swift project

### IDE
On Linux the recommended way to write code is to use [VSCode](https://code.visualstudio.com/) or [VSCodium](https://vscodium.com/) IDE. This way you'll get preconfigured LLDB configuration to build and run the **AppKidDemo**, full integration with Swift SourceKit LSP for syntax highlight, symbol navigation, automcompletion just like in Xcode and much more. It's just convenient.

On macOS there is a choice between [VSCode](https://code.visualstudio.com/)/[VSCodium](https://vscodium.com/) and [Xcode](https://developer.apple.com/xcode/).~~I recommend generating the Xcode project via `swift package generate-xcodeproj` and opening it because indexing and build target generation is just faster this way, but you can also open `Packge.swift` in Xcode and it will be pretty much the same user experience.~~

The generate-xcodeproj from swift package manager is [deprecated](https://forums.swift.org/t/rfc-deprecating-generate-xcodeproj/42159). It does not receive updates anymore and is throwing a fatal error when it meets a plugin definition in `Package.swift` file. Opening `Package.swift` itself does not work really well anymore either as it's just not showing any of the local submodules in Xcode sources tree. 

There is a carefully crafter VSCode/VSCoium configuration provided in the root of the reporisotory, including launch configuration and a bunch of tasks for things like regenerating Vulkan entities interface conformance from Vulkan spec or rebuilding ContentAnimation shaders. For the best experience in VSCode/VSCodium it is highly recommended to install following extensions: 
- [Swift](https://marketplace.visualstudio.com/items?itemName=sswg.swift-lang)
- [CodeLLDB](https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb)
- [Camel Case Navigation](https://marketplace.visualstudio.com/items?itemName=maptz.camelcasenavigation)
- [SwiftFormat](https://marketplace.visualstudio.com/items?itemName=vknabel.vscode-swiftformat)
- [Launch Configs](https://marketplace.visualstudio.com/items?itemName=ArturoDent.launch-config)
- [change-case](https://marketplace.visualstudio.com/items?itemName=wmaurer.change-case)
- [Shader languages support](https://marketplace.visualstudio.com/items?itemName=slevesque.shader)
- [psioniq File Header](https://marketplace.visualstudio.com/items?itemName=psioniq.psi-header)

## License
The code in this repository is distributed under Apache-2.0. Please check [Contributing](#contributing) before creating a pull request

## Acknowledgements
**AppKid** is making use of the following opensource projects:
- [Swift Collections](https://github.com/mirror/libX11), Apache-2.0 license
- [cglm](https://github.com/recp/cglm), MIT license
- [Swift Argument Parser](https://github.com/apple/swift-argument-parser), Apache-2.0 license
- [XLMCoder](https://github.com/CoreOffice/XMLCoder.git), MIT license
- [swift-tools-support-core](https://github.com/apple/swift-tools-support-core), Apache-2.0 license
- [Vulkan Memory Allocator](https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator), MIT license
- [stb](https://github.com/nothings/stb), MIT license
- [Vulkan SDK](https://www.lunarg.com/vulkan-sdk/), Apache-2.0 license 
- libXlib, X11 variation of MIT license
- libwayland, MIT "Expat" license
- libCairo, LGPL-2.1 license
- libPango, LGPL-2.1 license
- libGlib, LGPL-2.1 license
- libclang, Apache-2.0 license with LLVM Exceptions

