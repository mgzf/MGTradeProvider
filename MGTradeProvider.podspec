Pod::Spec.new do |s|
  s.name             = "MGTradeProvider"
  s.version          = "0.0.1"
  s.license          = 'MIT License'
  s.summary          = "MGTradeProvider"
  s.description      = "MGTradeProviderMGTradeProviderMGTradeProviderMGTradeProvider"
  s.homepage         = "https://github.com/mgzf/MGTradeProvider.git"

  s.author           = { "Harly" => "magic_harly@hotmail.com" }
  s.source           = { :git => "https://github.com/mgzf/MGTradeProvider.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files  = "MGFilterProvider/Source/**/*.swift"
end