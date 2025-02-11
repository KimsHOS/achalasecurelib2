platform :ios, '15.0'

target 'achalasecurelib2' do
  # Use static frameworks for all dependencies
  use_frameworks! :linkage => :static

  # Define dependencies
  pod 'GoogleMLKit/FaceDetection', '7.0.0'
  pod 'TensorFlowLiteSwift'

  # Exclude all simulator architectures (arm64 & x86_64)
  post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['EXCLUDED_ARCHS[sdk=iphonesimulator*]'] = 'arm64 x86_64'
      end
    end
  end
end
