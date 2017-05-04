#
#  Be sure to run `pod spec lint UOHelpers.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "UOHelpers"
  s.version      = "1.0.0"
  s.summary      = "Extensions for Quick and Simple behaviours used widely"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = "Extensions for Quick and Simple behaviours used widely in most projects"

  s.homepage     = "https://github.com/UroborosStudios/UOHelpers"

  s.license      = "MIT"

  s.author       = { "Jonathan Silva" => "jhi.290292@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/UroborosStudios/UOHelpers", :tag => "1.0.0" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "**/*.{h,m,swift}"
  #s.exclude_files = "**/USTableViewTests.swift"

  s.pod_target_scconfig = { 'SWIFT_VERSION' => '3' }
end
