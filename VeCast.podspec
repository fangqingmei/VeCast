version = "5.1.8.103"  
Pod::Spec.new do |s|
  s.name             = "VeCast"
  s.version          = version
  s.summary          = "VeCast SDK"
  s.description      = "VeCast SDK for iOS"
  s.homepage         = 'https://github.com/volcengine/volcengine-specs'

  s.license          = {
    :type => 'Proprietary',
    :text => 'https://bytedance.feishu.cn/docx/AtXJdsnfhorZ55xrNP6cVOWSnjf'
  }
  s.author           = { "fangqingmei" => "fangqingmei@bytedance.com" }

  s.source           = { :http => "https://hstob-cdn-tos.volccdn.com/volcengine/VeCast/5.1.8.103/VeCast.framework.zip" }

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.pod_target_xcconfig = {
    # 'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  
  # s.ios.frameworks = 'WebKit', 'JavaScriptCore'
  # s.libraries = "c++"
  
  s.vendored_framework = 'VeCast.framework'
  
end