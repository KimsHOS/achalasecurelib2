Pod::Spec.new do |s|
  s.name             = 'achalasecurelib'
  s.version          = '1.0.0' # Update with your version number
  s.summary          = 'A secure library for face detection using Google ML Kit and TensorFlow Lite.'
  s.description      = <<-DESC
                       A secure library that provides face detection capabilities using Google ML Kit and TensorFlow Lite.
                       DESC

  s.homepage         = 'https://github.com/kimsHOS/achalasecurelib2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'your.email@example.com' }
  s.source           = { :git => 'https://github.com/kimsHOS/achalasecurelib2.git', :tag => s.version.to_s }

  s.static_framework = true
  #s.ios.deployment_target = '12.0' # Real device minimum iOS version

  # Specify the vendored framework
  s.vendored_frameworks = 'achalasecurelib2.framework'

  s.requires_arc = true

  # Define dependencies
  s.dependency 'GoogleMLKit/FaceDetection', '7.0.0'
  s.dependency 'TensorFlowLiteSwift'

  s.swift_version = '5.0'

  # Force architecture to support only real device (arm64)
  s.xcconfig = {
    'ARCHS' => 'arm64', 
    'ONLY_ACTIVE_ARCH' => 'YES' # Ensures build is for only the active architecture
  }
  
  # This ensures that no simulator support is included
  s.platform = :ios, '12.0'
end
