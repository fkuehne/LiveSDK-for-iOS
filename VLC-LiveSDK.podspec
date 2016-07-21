Pod::Spec.new do |s|

  s.name         = "VLC-LiveSDK"
  s.version      = "5.7.0w"
  s.summary      = "Client libraries for calling Live Services from iOS apps"
  s.description  = <<-DESC
                   Client libraries for calling the Live Services from iOS apps. Provides
                   easy access to OneDrive, Outlook.com, and Microsoft Account authentication
                   from your iOS application.

                   This is a fork for VLC-appleOS to support more architectures as well as tvOS.
                   DESC
  s.homepage     = "http://dev.onedrive.com"
  s.license      = { :type => "MIT", :file => "LICENSE.txt" }
  s.author             = { "onedriveapi" => "onedriveapi@microsoft.com" }
  s.social_media_url   = "http://twitter.com/onedrivedev"

  s.ios.deployment_target = "5.1.1"
  s.tvos.deployment_target = "9.0"
  s.compiler_flags = "-DNS_BLOCK_ASSERTIONS=1"

  s.source       = { :git => "https://github.com/fkuehne/LiveSDK-for-iOS.git",
                     :tag => "#{s.version}" }

  s.source_files  = "src/LiveSDK/**/*.{h,m}"
  s.exclude_files = "src/UnitTests/**", "Examples/**"
  s.tvos.exclude_files = "src/LiveSDK/Library/Internal/LiveAuthDialog*", "src/LiveSDK/Library/Internal/LiveAuthRequest.*"
  s.public_header_files = "src/LiveSDK/Library/Public/*.h", "src/LiveSDK/Library/Internal/LiveApiHelper.h", "src/LiveSDK/Library/Internal/LiveAuthStorage.h"

  s.resources = "src/LiveSDK/Library/Internal/Resources/*.png",
  				"src/LiveSDK/Library/Internal/*.xib"
  s.requires_arc = false

end
