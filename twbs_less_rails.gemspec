$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'twbs_less_rails/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'twbs_less_rails'
  s.version     = TwbsLessRails::VERSION
  s.authors     = ['diowa']
  s.email       = ['dev@diowa.com']
  s.homepage    = 'https://github.com/diowa/twbs_less_rails'
  s.summary     = 'Bootstrap and FontAwesome assets in Rails applications'
  s.description = 'Provides assets for Bootstrap and FontAwesome in your Rails application.'
  s.license     = 'BSD-2-Clause'

  s.files         = `git ls-files`.split("\n") - `git ls-files -- {src/*,".*"}`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'rails', '>= 3.2.21', '< 5.0.0'
  s.add_runtime_dependency 'therubyracer', '~> 0.12.1'
  s.add_runtime_dependency 'less-rails', '~> 2.6'

  s.add_development_dependency 'appraisal', '~> 1.0'
  s.add_development_dependency 'capybara', '~> 2.4'
  s.add_development_dependency 'coveralls', '~> 0.7.3'
  s.add_development_dependency 'minitest', '>= 4.7.5', '< 6.0.0'
  s.add_development_dependency 'rake', '~> 10.4'
  s.add_development_dependency 'simplecov', '~> 0.9.1'
  s.add_development_dependency 'uglifier', '~> 2.7'
end
