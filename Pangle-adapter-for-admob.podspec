Pod::Spec.new do |s|
  s.name             = 'Pangle-adapter-for-admob'
  s.version          = '1.4.0'
  s.summary          = 'Integrating Pangle with Admob Mediation'
  s.description      = <<-DESC
  For publishers who want to use the Google Mobile Ads SDK to load and display ads from Pangle via mediation.
                       DESC

  s.license             = { :type => 'MIT', :file => 'AdmobAdapter/LICENSE' }

  s.author              = { 'zengyang' => 'zywork@bytedance.com' }

  s.homepage            = 'https://www.pangle.cn'
  
  s.source              = { :http => 'https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/pangle-sdk-static-va/Adapter/Admob/1.4.0/AdmobAdapter.zip' }

  s.pod_target_xcconfig = {"EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64 arm64e armv7 armv7s", "EXCLUDED_ARCHS[sdk=iphoneos*]" => "i386 x86_64"}

  s.platform            = :ios, "10.0"

  s.static_framework    = true

  s.source_files        = "AdmobAdapter/*.{h,m}"

  s.dependency "Ads-Global",">= 3.7.0.0"

  s.dependency "Google-Mobile-Ads-SDK",">= 8.0.0"

  

  # pod trunk push Pangle-adapter-for-admob.podspec --allow-warnings --verbose --use-libraries --skip-import-validation
  # pod trunk push Pangle-adapter-for-admob.podspec --allow-warnings --verbose --skip-import-validation

end
