#
#  Be sure to run `pod spec lint lytics-mobile-ios.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "Lytics"
  spec.version      = "0.0.3"
  spec.summary      = "broker for analytics tools in mobile"

  spec.description      = <<-DESC
  Lytics are tools with focus for created by theo for use in Blu applications
Project created with the objective use components created by OceanTokens.
                       DESC

  spec.homepage     = "https://github.com/Pagnet/lytics-mobile-ios"
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { "BLU" => "devs@useblu.com.br" }
  spec.ios.deployment_target = '10.0'
  spec.swift_versions = ['5.0']
  spec.source           = { :git => 'https://github.com/Pagnet/lytics-mobile-ios.git',
                        :tag => 'Lytics-' + spec.version.to_s }


  spec.source_files = "Lytics/Classes/**/*"
  spec.exclude_files = "Lytics/Classes/Info.plist"


  spec.info_plist = { 'CFBundleIdentifier' => 'br.com.blu.Lytics' }
  spec.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER': 'br.com.blu.Lytics' }
  
  spec.dependency 'SwiftLint'
  spec.dependency 'SwiftFormat/CLI'
  

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
