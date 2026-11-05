Pod::Spec.new do |s|
  s.name             = 'KOSSDK'
  s.version          = '1.0.1'
  s.summary          = 'KOS SDK native wrapper for iOS.'
  s.description      = 'KOS SDK native binary distribution for Objective-C and Swift hosts.'
  s.homepage         = 'https://example.com/kos-sdk'
  s.license          = { :type => 'Commercial', :text => 'Copyright KOS. All rights reserved.' }
  s.author           = { 'KOS SDK Team' => 'sdk@example.com' }
  s.platform         = :ios, '15.0'

  s.source = {
    :http => 'https://meijingkang.github.io/kos-sdk-dist/ios/KOSSDK-1.0.1.xcframework.zip',
    :sha256 => '9eaacc403a1eb3b6cd5a2a41454a2ddcafde4177a7df6d68f4b094c3eb958b39'
  }
  s.vendored_frameworks = 'KOSSDK.xcframework'
  s.requires_arc = true
  s.static_framework = false
  s.pod_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'NO' }
end
