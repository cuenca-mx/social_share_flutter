#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint social_share.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'social_share'
  s.version          = '2.3.1'
  s.summary          = 'Share content directly to social apps from Flutter.'
  s.description      = <<-DESC
Wide variety of sharing options to share directly to well-known apps like Instagram, Facebook, Twitter, WhatsApp, and more.
                       DESC
  s.homepage         = 'https://github.com/ShekarMudaliyar/social_share'
  s.license          = { :type => 'MIT', :file => '../LICENSE' }
  s.author           = { 'Shekar Mudaliyar' => 'https://github.com/ShekarMudaliyar' }
  s.source           = { :path => '.' }
  s.source_files = 'social_share/Sources/social_share/**/*.{h,m}'
  s.public_header_files = 'social_share/Sources/social_share/include/**/*.h'
  s.resource_bundles = { 'social_share_privacy' => ['social_share/Sources/social_share/PrivacyInfo.xcprivacy'] }
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
