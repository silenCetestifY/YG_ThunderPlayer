Pod::Spec.new do |s|  
  s.name             = "YG_MediaView"  
  s.version          = “0.0.1”  
  s.summary          = "A Custom MediaView used on iOS."  
  s.description      = <<-DESC  
                       It is a MediaView base on AVPlayer used on iOS, which implement by Objective-C.  
                       DESC  
  s.homepage         = "https://github.com/silenCetestifY/YG_MediaView"  
  screenshots_2"  
  s.license          = 'MIT'  
  s.author           = { “吴炎根” => “1072289237@qq.com" }  
  s.source           = { :git => "https://github.com/silenCetestifY/YG_MediaView.git", :tag => s.version.to_s }  
   
  
  s.platform     = :ios, ‘7.0’  

  s.requires_arc = true  
  
  s.source_files = 'YG_MediaView/**/*.{h,m}'  

  
  
  s.frameworks = 'Foundation', ‘AVFoundation’, 'UIKit'  
  
end  