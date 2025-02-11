Pod::Spec.new do |s|
  s.name             = 'achalasecurelib'
  s.version          = '1.0.2' # Update with your version number
  s.summary          = 'A secure library for face detection using Google ML Kit and TensorFlow Lite.'
  s.description      = <<-DESC
                       A secure library that provides face detection capabilities using Google ML Kit and TensorFlow Lite.
                       DESC
  s.homepage         = 'https://github.com/kimsHOS/achalasecurelib2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'your.email@example.com' }
  s.source           = { :git => 'https://github.com/kimsHOS/achalasecurelib2.git', :tag => s.version.to_s }

  # Deployment settings
  s.ios.deployment_target = '15.5' # Real device minimum iOS version
  s.static_framework = true

  # Specify the vendored framework
  s.vendored_frameworks = 'achalasecurelib2.framework'
  s.requires_arc = true

  # Define dependencies
  s.dependency 'GoogleMLKit/FaceDetection', '7.0.0'
  s.dependency 'TensorFlowLiteSwift'

  # Swift version
  s.swift_version = '5.0'

  # Exclude simulator architectures
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 x86_64',
    'ONLY_ACTIVE_ARCH' => 'YES'
  }
end