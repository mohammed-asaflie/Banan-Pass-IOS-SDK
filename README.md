# Banan Core iOS SDK



## License
This software is subject to Info-valley's end user license agreement (EULA).

## Introduction

This document provides detailed information about the Banan Core iOS SDK.

## Prerequisites

- iOS version 11.0 or later.
- Xcode 12.0.


### Install SDK Using CocoaPods

please use `import BananPass` in Xcode.

1. Add the following in the podfile to get **all** the modules:

		pod 'BananPass', '~> 1.2.2'


2. Enable "BUILD\_FOR\_DISTRIBUTION" for all Acuant pod frameworks in Build Settings.

	- Using Cocoapods. Add to your Podfile.

			post_install do |installer|
				installer.pods_project.targets.each do |target|
					if ['AcuantiOSSDKV11', 'KeychainAccess', 'Socket.IO-Client-Swift', 'Starscream' 'SwiftyJSON'].include? target.name
						target.build_configurations.each do |config|
							config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
						end
					end
				end
			end


**Initialization**
Before you use the SDK, you must initialize it, either by using by using bearer tokens (provided by an external server).

1. Initialize the SDK.

		let banan = BananPass.startSDK(accessToken: "provided_token") { (token, err) in
            print("token is: ",token)
            print("error:", err)
        }
        self.present(banan, animated: true, completion: nil)


**Info-valley Inc.**
