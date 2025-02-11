platform :ios, '15.5'

target 'achalasecurelib2' do
  # Use static frameworks for all pods
  use_frameworks! :linkage => :static

  # Pods for achalasecurelib2
  pod 'GoogleMLKit/FaceDetection', '7.0.0'
  pod 'TensorFlowLiteSwift'

  # Exclude simulator architectures for all pods
  post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['EXCLUDED_ARCHS[sdk=iphonesimulator*]'] = 'arm64 x86_64'
        config.build_settings['ONLY_ACTIVE_ARCH'] = 'YES'
      end
    end
  end
end