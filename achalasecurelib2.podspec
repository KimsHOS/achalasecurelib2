Pod::Spec.new do |s|
  s.name             = 'achalasecurelib2'
  s.version          = '1.0.3'
  s.summary          = 'A secure library for face detection using Google ML Kit and TensorFlow Lite.'
  s.description      = 'A secure library that provides face detection capabilities using Google ML Kit and TensorFlow Lite.'
  s.homepage         = 'https://github.com/kimsHOS/achalasecurelib2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'your.email@example.com' }
  s.source           = { :git => 'https://github.com/kimsHOS/achalasecurelib2.git', :tag => s.version.to_s }

  # ✅ Platform (Device-only)
  s.platform = :ios, '15.5'

  s.static_framework = true

  # ✅ Ensure the correct vendored framework path
  s.vendored_frameworks = 'achalasecurelib2.framework'

  s.requires_arc = true

  # ✅ Define dependencies
  s.dependency 'GoogleMLKit/FaceDetection', '7.0.0'
  s.dependency 'TensorFlowLiteSwift'

  # ✅ Set Swift version
  s.swift_version = '5.0'

  # ✅ Exclude all simulator architectures
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
end
