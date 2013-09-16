Pod::Spec.new do |s|
  s.name         = "EDColor"
  s.version      = "0.2.0"
  s.summary      = "A collection of categories and utilities that extend UIColor and NSColor."
  s.homepage     = "https://github.com/thisandagain/color"
  s.license      = 'MIT'
  s.author       = { "Andrew Sliwinski" => "andrewsliwinski@acm.org" }
  s.source       = { :git => "https://github.com/thisandagain/color.git", :tag => "v0.2.0" }

  s.ios.deployment_target = '6.1'
  s.osx.deployment_target = '10.7.5'

  s.ios.frameworks = 'UIKit'
  s.ios.frameworks = 'AppKit'

  s.source_files = 'EDColor', 'EDColor/**/*.{h,m}'
  s.ios.exclude_files = "EDColor/OSX"
  s.osx.exclude_files = "EDColor/iOS"
  s.requires_arc = true

end