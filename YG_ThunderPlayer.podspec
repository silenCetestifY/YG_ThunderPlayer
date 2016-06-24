Pod::Spec.new do |s|
s.name             = "YG_ThunderPlayer"
s.version          = "0.1.8"
s.summary          = "A MediaView used on iOS."
s.description      = <<-DESC
It is a cunstom MediaView used on iOS, which implement by Objective-C.
DESC
s.homepage         = "https://github.com/silenCetestifY/YG_ThunderPlayer"

s.license          = 'MIT'
s.author           = { "吴炎根" => "1072289237@qq.com" }
s.source           = { :git => "https://github.com/silenCetestifY/YG_ThunderPlayer.git", :tag => s.version.to_s }


s.platform     = :ios, '8.0'

s.requires_arc = true

s.source_files = 'YG_ThunderPlayer/**/*.{h,m}'

s.resource     = 'YG_ThunderPlayer/resource/*.{png,xib,nib,bundle}'

s.frameworks = 'Foundation', 'AVFoundation', 'UIKit'

end