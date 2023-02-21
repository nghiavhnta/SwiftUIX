Pod::Spec.new do |s|
  s.name = "SwiftUIX"
  s.version = "0.1.3"
  s.summary = "A CocoaPods library written in SwiftUI"
  s.homepage = "https://github.com/heartsker/SwiftUIX"
  s.license = { :type => "Apache License, Version 2.0", :file => "LICENSE" }
  s.authors = "heartsker"
  s.ios.deployment_target = "13.0"
  s.source = { :git => "https://github.com/heartsker/SwiftUIX.git", :tag => "0.1.3" }
  s.swift_version = '5.7'
  s.cocoapods_version = '>= 1.5.0'
  s.source_files  = "Sources/**/*.{h,m,swift}"
end
