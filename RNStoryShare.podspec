require 'json'
package = JSON.parse(File.read(File.join(__dir__, './', 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'RNStoryShare'
  s.version      = package['version']
  s.summary      = package['description']
  s.requires_arc = true
  s.homepage     = "https://github.com/NiciusB/react-native-story-share"
  s.license      = 'MIT'
  s.author       = { 'author' => 'nuno@balbona.me' }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/NiciusB/react-native-story-share.git", :tag => "master" }
  s.source_files  = 'ios/**/*.{h,m,swift}'

  s.dependency 'React'
  s.dependency 'SnapSDK/SCSDKCreativeKit'
end
