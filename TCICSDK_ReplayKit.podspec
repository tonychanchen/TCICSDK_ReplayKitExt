
Pod::Spec.new do |s|


  s.name         = "TCICSDK_ReplayKit"
  s.version      = "1.0.0.20"
  s.summary      = "TCICSDK_ReplayKit"
  s.description  = <<-DESC
                      腾讯云互动教育录屏插件
                   DESC
  s.homepage     = "https://github.com/JamesChenGithub/TCICSDK_ReplayKitExt"
  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = "alexichen"
  s.platform     = :ios
  s.platform     = :ios, "9.0"

  valid_archs = ['arm64', 'armv7','x86_64', 'i386']
  s.xcconfig = {
    'VALID_ARCHS' =>  valid_archs.join(' '),
  }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.source       = { :git => "https://github.com/JamesChenGithub/TCICSDK_ReplayKitExt.git", :tag => "#{s.version}" }
  s.vendored_frameworks = ['TXLiteAVSDK_ReplayKitExt.framework', 'TCICScreenKit.framework']
end
