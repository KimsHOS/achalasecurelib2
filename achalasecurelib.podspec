Pod::Spec.new do |s|
  s.name             = 'achalasecurelib'
  s.version          = '1.0.0' # Update with your version number
  s.summary          = 'A short description of achalasecurelib.'
  s.description      = <<-DESC
                       A longer description of achalasecurelib.
                       DESC

  s.homepage         = 'https://github.com/kimsHOS/achalasecurelib2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'your.email@example.com' }
  s.source           = { :git => 'https://github.com/kimsHOS/achalasecurelib2.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.vendored_frameworks = 'achalasecurelib2.framework' # Path to your .framework file

  # Add dependencies
  s.dependency 'GoogleMLKit/FaceDetection', '7.0.0'
  s.dependency 'TensorFlowLiteSwift'

  # If your framework includes resources (e.g., images, storyboards), specify them here:
  # s.resource_bundles = {
  #   'achalasecurelib2' => ['achalasecurelib2/Assets/*.png']
  # }

  # If your framework uses Swift, specify the Swift version
  s.swift_version = '5.0'

end