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

1. Initialize the SDK:

	BananCore.shared.initialize(server: "serverURL", accessToken: token) { (success) in
            print("is intialize ",success)
        }
2. Start BananCore by adding simple line of code
	let bananCore = BananCore.shared.startSDK { (token, err) in
            if let err = err {
                print("err", err)
            }
            print("Token is: ", token)
        }
        present(bananCore, animated: true, completion: nil)
	
**Banan Core Services**
BananCore provides external services which can be independently used:

1. Liveness Service:
Provides functionality to detect whether the person image is live or not 
Direct Liveness Check: This is done through sending a UIImage or Data of the image.

	BananCoreServices.liveness(image: UIImage(named: "Provided_Image")) { (isLive, err) in
		if let err = err {
			print("err", err)
		}
		print(isLive)
	}
2. Auto Capture Liveness Check: This will prompt a dialog to use the device camera to automatically capture user image and perform liveness check. (don’t forget to add NSCameraUsageDescription property in info.plist).

	BananCoreServices.livenessAutoCapture { (isLive, err) in
		    if let err = err {
			print("err", err)
		    }
		    print(isLive)
	}
	
3. Face Match Check: this will perform facial matching check between two different images and returns whether it was the same person or not in the provided images. (both UIImage or Data of the image can be used)
	
	BananCoreServices.faceMatch(firstImage: UIImage(named: "First_Image"), secondImage: UIImage(named:"Second_Image")) { (isMatched, err) in
            if let err = err {
                print("err", err)
            }
            print(isMatched)
        }
4. Auto Face Capture: will automatically detect and capture user image. (don’t forget to add NSCameraUsageDescription property in info.plist).
	
	let autofaceCapture = BananCoreServices.faceCapture { (imageData) in
            print(imageData)
        }
        present(autofaceCapture, animated: true, completion: nil)

**Info-valley Inc.**
