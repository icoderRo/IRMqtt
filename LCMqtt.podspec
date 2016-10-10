Pod::Spec.new do |s|

  s.name         = "LCMqtt"
  s.version      = "1.0.0"
  s.summary      = "mqtt used on iOS."
  s.homepage     = "https://github.com/icoderRo/LCMqtt"
  s.license      = "MIT"
  s.author             = { "simon" => "simon_ro@yeah.net" }
  s.platform     = :ios,'7.0'
  # for using GCD queue as Objective-C objects
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/icoderRo/LCMqtt.git", :tag => "#{s.version}" }

  s.source_files  = 'LCMqtt/*'
  
  s.requires_arc = true

end
