Pod::Spec.new do |s|
  s.name         = "ChimeSDK"
  s.version      = "1.0.1"
  s.summary      = "Pod for ChimeSDK"
  s.description  = <<-DESC
                  Pod for ChimeSDK.
                   DESC
  s.homepage     = "https://github.com/phu2810/ChimeSDK"
  s.license      = "MIT"
  s.author       = { "author" => "nguyenphu2810@gmail.com" }
  s.platform     = :ios, "9.0"

  s.source = { :http => 'https://github.com/phu2810/ChimeSDK/releases/download/1.0.1/ChimeSDK.zip' }
  s.requires_arc = true
  s.vendored_frameworks =  "ChimeSDK/AmazonChimeSDK.framework", "ChimeSDK/AmazonChimeSDKMedia.framework"
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end

