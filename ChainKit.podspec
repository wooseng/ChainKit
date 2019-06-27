#
#  Be sure to run `pod spec lint ChainKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "ChainKit"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of ChainKit."
  spec.description  = <<-DESC
                        DESC

  spec.homepage     = "http://gitlab.51shaoxi.com/wooseng/ChainKit"

  spec.license      = "LICENSE"
  spec.author       = { "wooseng" => "zhanbaocheng@vip.qq.com" }

  spec.ios.deployment_target = "10.0"

# spec.osx.deployment_target = "10.7"
# spec.watchos.deployment_target = "2.0"
# spec.tvos.deployment_target = "9.0"

  spec.source = { :git => 'http://gitlab.51shaoxi.com:8080/wooseng/ChainKit.git', :tag => spec.version }
  spec.source_files  = "Sources/*.swift"
# spec.public_header_files = "Classes/**/*.h"

# spec.resource  = "icon.png"
# spec.resources = "Resources/*.png"

  spec.swift_version = '5.0'
  spec.requires_arc = true
# spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

# 以下为需要依赖的系统框架和库
# spec.framework  = "SomeFramework"
# spec.frameworks = "SomeFramework", "AnotherFramework"
# spec.library   = "iconv"
# spec.libraries = "iconv", "xml2"

# 以下为需要依赖的第三方的pod库, 如果有多个依赖，则换行接着写, 依赖的写法与Podfile中的写法一致
 spec.dependency "SnapKit"

end
