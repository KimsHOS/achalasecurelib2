Pod::Spec.new do |s|
  s.name             = 'achalasecurelib'
  s.version          = '1.0.1' # Updated version
  s.summary          = 'A secure library for face detection using Google ML Kit and TensorFlow Lite.'
  s.description      = <<-DESC
                       A secure library that provides face detection capabilities using Google ML Kit and TensorFlow Lite.
                       DESC
  s.homepage         = 'https://github.com/kimsHOS/achalasecurelib2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'your.email@example.com' }
  s.source           = { :git => 'https://github.com/kimsHOS/achalasecurelib2.git', :tag => s.version.to_s }
  
  # Deployment settings
  s.ios.deployment_target = '15.5'
  s.swift_version = '5.0'
  s.static_framework = true

  # Framework linking
  s.vendored_frameworks = 'achalasecurelib2.framework'
  s.requires_arc = true

  # Dependencies
  s.dependency 'GoogleMLKit/FaceDetection', '7.0.0'
  s.dependency 'TensorFlowLiteSwift'

  # Ensure CocoaPods excludes simulator architectures
  s.pod_target_xcconfig = {
    'ARCHS' => 'arm64',
    'ONLY_ACTIVE_ARCH' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 x86_64',
    'VALID_ARCHS' => 'arm64'
  }

  # Test Specification
  s.test_spec 'Tests' do |test_spec|
    test_spec.platform = :ios, '15.5'
    test_spec.requires_app_host = true
    test_spec.source_files = 'Tests/**/*.{swift,m}'
    test_spec.dependency 'GoogleMLKit/FaceDetection', '7.0.0'
  end
end
