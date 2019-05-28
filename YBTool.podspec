Pod::Spec.new do |s|
s.name             = "YBTool"

s.version          = "1.2.0"
s.summary          = "A tools used on iOS."
s.description      = <<-DESC
It is a marquee view used on iOS, which implement by Objective-C.
DESC
s.homepage         = "https://github.com/coderYB/YBTool"
# s.screenshots      = ""
s.license          = 'MIT'
s.author           = { "coderYB" => "807110922@qq.com" }
s.source           = { :git => "https://github.com/coderYB/YBTool.git", :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/NAME'

s.platform     = :ios, '8.0'
# s.ios.deployment_target = '5.0'
# s.osx.deployment_target = '10.7'
s.requires_arc = true


s.source_files  = 'YBTool/YBTool/Class/**/*.{h,m}'


# s.resources = 'Assets'

# s.ios.exclude_files = 'Classes/osx'
# s.osx.exclude_files = 'Classes/ios'
# s.public_header_files = 'Classes/**/*.h'
s.frameworks = 'Foundation', 'UIKit', 'AdSupport'
s.dependency 'SDWebImage'
s.dependency 'MJRefresh'
s.dependency 'MBProgressHUD'
s.dependency 'MJExtension'

end

