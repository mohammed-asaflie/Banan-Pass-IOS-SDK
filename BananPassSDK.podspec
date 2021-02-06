#
# Be sure to run `pod lib lint BananPassSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
#

Pod::Spec.new do |s|
s.name              = 'BananPassSDK'
s.version           = '1.0.0'
s.summary           = 'Description of BananPass.'

s.description      = <<-DESC
A bigger description of BananPass.
DESC

s.homepage          = 'https://test.com'
s.license           = { :type => 'Apache-2.0', :file => 'LICENSE' }
s.authors            = { 'amir' => 'amir.whiz@gmail.com' }
s.source            = { :http => 'http://amirriyadh.herokuapp.com/bananpass/1.0.0/BananPassFramework.zip'}

s.ios.deployment_target = '12.0'
s.ios.vendored_frameworks = 'BananPassSDK.framework'

# Add all the dependencies
s.dependency 'Alamofire'
s.dependency 'lottie-ios'
s.dependency 'AcuantiOSSDKV11/AcuantImagePreparation'
s.dependency 'AcuantiOSSDKV11/AcuantPassiveLiveness'
s.dependency 'AcuantiOSSDKV11/AcuantFaceCapture'

end
