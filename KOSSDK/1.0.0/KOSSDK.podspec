Pod::Spec.new do |s|
  s.name             = 'KOSSDK'
  s.version          = '1.0.0'
  s.summary          = 'KOS SDK native wrapper for iOS.'
  s.description      = 'KOS SDK native binary distribution for Objective-C and Swift hosts.'
  s.homepage         = 'https://example.com/kos-sdk'
  s.license          = { :type => 'Commercial', :text => 'Copyright KOS. All rights reserved.' }
  s.author           = { 'KOS SDK Team' => 'sdk@example.com' }
  s.platform         = :ios, '15.0'

  s.source = {
    :http => 'https://meijingkang.github.io/kos-sdk-dist/ios/KOSSDK-1.0.0.xcframework.zip',
    :sha256 => '2da3c17355c5abfbf84f85db86bdb477dc41e551f90670b46161ed1b804e3ea6'
  }
  s.prepare_command = 'unzip -oq KOSSDK-1.0.0.xcframework.zip'
  s.vendored_frameworks = 'KOSSDK.xcframework'
  s.requires_arc = true
  s.static_framework = false
  s.pod_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'NO' }
end
