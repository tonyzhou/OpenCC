Pod::Spec.new do |s|
  s.name = 'opencc'
  s.ios.deployment_target = '8.0'
  s.version = '1.0.5.1'
  s.license = 'MIT'
  s.summary = 'A project for conversion between Traditional and Simplified Chinese'
  s.homepage = 'https://github.com/BYVoid/OpenCC'
  s.author = { 'BYVoid' => 'https://www.byvoid.com' }
  s.source = { :git => 'https://github.com/tonyzhou/OpenCC.git', :tag => s.version.to_s }

  s.requires_arc = true

  s.source_files = ['src/*.{hpp,cpp,h,c,cc}', 
      'deps/darts-clone/**/*.{hpp,cpp,h,c,cc}',
      'deps/rapidjson-0.11/**/*.{hpp,cpp,h,c,cc}',
      'deps/tclap-1.2.1/**/*.{hpp,cpp,h,c,cc}']
  s.exclude_files = ['src/*Test.{hpp,cpp}']
  s.public_header_files = [
      'src/*.{hpp,h}'
    ]
end
