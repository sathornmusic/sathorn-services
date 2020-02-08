Pod::Spec.new do |spec|

  spec.name = "WhiteFlowerFactory"
  spec.version = "0.3.0"
  spec.summary  = "A simple URLSession wrapper"

  spec.license = { :type => "MIT", :file => "LICENSE" }

  spec.author = { "Stephen Bodnar" => "stephen@sathorn.app" }

  spec.homepage = "https://github.com/JoeyBodnar/WhiteFlowerFactory.git"

  spec.source = { :git => "https://github.com/JoeyBodnar/WhiteFlowerFactory.git", :tag => "#{spec.version}" }

  spec.source_files = "WhiteFlowerFactory/*.{swift}"

  spec.platform = :ios
  spec.ios.deployment_target = '11.0'

  spec.swift_version = "5.0"

end
