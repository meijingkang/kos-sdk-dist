Pod::Spec.new do |s|
  s.name             = 'KOSSDK'
  s.version          = '1.0.4'
  s.summary          = 'KOS SDK native wrapper for iOS.'
  s.description      = 'KOS SDK native binary distribution for Objective-C and Swift hosts.'
  s.homepage         = 'https://meijingkang.github.io/kos-sdk-dist/'
  s.license          = { :type => 'Commercial', :text => 'Copyright KOS. All rights reserved.' }
  s.author           = { 'KOS SDK' => 'https://github.com/meijingkang' }
  s.platform         = :ios, '15.0'

  s.source = {
    :http => 'https://meijingkang.github.io/kos-sdk-dist/ios/KOSSDK-1.0.4.xcframework.zip',
    :sha256 => 'd15a231a90ec8d88137fbba88747a78113e2aef00dd72fcfd01c917735a6883c'
  }
  s.vendored_frameworks = ['KOSSDK.xcframework', 'Flutter.xcframework', 'App.xcframework']
  s.requires_arc = true
  s.static_framework = false
  s.pod_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'NO' }
end
