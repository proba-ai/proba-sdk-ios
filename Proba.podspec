#
# Be sure to run `pod lib lint Proba.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Proba'
  s.version          = '0.2.6'
  s.summary          = 'A/B testing in mobile apps.'
  s.description      = 'A/B testing in mobile apps. Based on Bayesian statistics.'
  s.homepage         = 'https://proba.ai'
  s.authors          = { 'Proba' => 'hello@proba.ai' }
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.source           = { :git => 'https://github.com/proba-ai/proba-sdk-ios.git', :tag => s.version }

  s.ios.deployment_target = '9.0'

  s.source_files = 'Proba/Classes/*', 'Proba/Classes/**/*'
  
  s.resource_bundles = {
    'Proba' => ['Proba/Assets/*.png']
  }

  s.swift_version = "5.0"

end
