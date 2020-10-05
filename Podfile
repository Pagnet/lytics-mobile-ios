#source 'https://github.com/CocoaPods/Specs.git'
workspace 'Lytics'

# Uncomment the next line to define a global platform for your project
 platform :ios, '11.0'

target 'Lytics' do
  project 'Lytics/Lytics.xcodeproj'
  # use_frameworks!
  use_modular_headers!
  inherit! :search_paths

  pod 'SwiftLint'
  pod 'SwiftFormat/CLI'

  target 'LyticsTests' do
  end
end

# Disable Code Coverage for Pods projects
post_install do |installer_representation|
    installer_representation.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['CLANG_ENABLE_CODE_COVERAGE'] = 'NO'
        end
    end
end



