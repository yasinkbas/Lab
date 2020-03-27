Pod::Spec.new do |s|
  s.name             = 'Lab'
  s.version          = '0.0.3'
  s.summary          = 'Simple Generic MVVM Structure.'

  s.homepage         = 'https://github.com/yasinkbas/Lab'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yasinkbas' => 'yasin.kbas12@gmail.com' }
  s.source           = { :git => 'https://github.com/yasinkbas/Lab.git', :tag => s.version.to_s }
  s.swift_version = '5.0'
  s.ios.deployment_target = '8.0'
  s.source_files = 'Lab/Classes/**/*'
end
