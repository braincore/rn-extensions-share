require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/braincore/rn-extensions-share.git", :tag => "master" }
  s.source_files  = "ios/*.{h,m}"

  s.dependency 'React'
end
