
Pod::Spec.new do |s|
s.name              = 'BananPass'
s.version           = '1.1.0'
s.summary           = 'Banan-Core SDK is a mobile application library that provide identity management service.'

s.description      = <<-DESC
Banan-Core SDK simply a mobile application library that provide identity management service for those applications that requires customers to have a digital identity enrolled before subscribing in application services.
DESC

s.homepage          = 'https://i-valley.tech'
s.license           = { :type => 'Apache-2.0', :file => 'LICENSE' }
s.authors            = { 'amir' => 'amir.whiz@gmail.com' }
s.source            = { :git => 'https://github.com/mohammed-asaflie/Banan-Pass-IOS-SDK.git', :tag => s.version.to_s }

s.swift_version = '5.0'
s.ios.deployment_target = '12.0'
s.ios.vendored_frameworks = 'BananPass.framework'



# Add all the dependencies

s.dependency 'PusherSwift', '8.0.0'
s.dependency 'Alamofire'
s.dependency 'lottie-ios'
s.dependency 'AcuantiOSSDKV11/AcuantImagePreparation'
s.dependency 'AcuantiOSSDKV11/AcuantPassiveLiveness'
s.dependency 'AcuantiOSSDKV11/AcuantFaceCapture'
s.dependency 'AcuantiOSSDKV11/AcuantCamera/Document'

s.dependency 'AcuantiOSSDKV11/AcuantHGLiveness'
s.dependency 'SnapKit'


end
