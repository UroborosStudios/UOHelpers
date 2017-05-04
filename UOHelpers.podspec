
Pod::Spec.new do |s|


  s.name         = "UOHelpers"
  s.version      = "1.0.0"
  s.summary      = "Extensions for Quick and Simple behaviours used widely"

  s.description  = "Extensions for Quick and Simple behaviours used widely in most projects"

  s.homepage     = "https://github.com/UroborosStudios/UOHelpers"

  s.license      = "MIT"

  s.author       = { "Jonathan Silva" => "jhi.290292@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/UroborosStudios/UOHelpers", :tag => "1.0.2" }


  s.source_files  = "**/*.{h,m,swift}"
  #s.exclude_files = "**/USTableViewTests.swift"

  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3' }
end
