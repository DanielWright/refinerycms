# Encoding: UTF-8
# DO NOT EDIT THIS FILE DIRECTLY! Instead, use lib/gemspec.rb to generate it.

Gem::Specification.new do |s|
  s.name              = %q{refinerycms-testing}
  s.version           = %q{1.1.0}
  s.summary           = %q{Testing plugin for Refinery CMS}
  s.description       = %q{This plugin adds the ability to run cucumber and rspec against the RefineryCMS gem while inside a RefineryCMS project}
  s.date              = %q{2011-07-31}
  s.email             = %q{info@refinerycms.com}
  s.homepage          = %q{http://refinerycms.com}
  s.rubyforge_project = %q{refinerycms}
  s.authors           = ['Philip Arndt']
  s.license           = %q{MIT}
  s.require_paths     = %w(lib)
  s.executables       = %w()

  s.add_dependency 'refinerycms-core',  '= 1.1.0'
  # RSpec
  s.add_dependency 'rspec-rails',       '~> 2.6'
  s.add_dependency 'fuubar'
  s.add_dependency 'rspec-instafail'

  # Cucumber
  s.add_dependency 'capybara',          '~> 1.0.0'
  s.add_dependency 'database_cleaner'
  s.add_dependency 'cucumber-rails',    '~> 1.0.0'
  s.add_dependency 'launchy'
  s.add_dependency 'rack-test',         '>= 0.5.6'
  s.add_dependency 'json_pure'

  # Factory Girl
  s.add_dependency 'factory_girl'

  # Autotest
  s.add_dependency 'autotest'
  s.add_dependency 'autotest-rails'
  s.add_dependency 'autotest-notification'

  # RCov
  if RUBY_VERSION < '1.9'
    s.add_dependency 'rcov'
  else
    s.add_dependency 'simplecov'
  end

  s.files             = [
    '.rspec',
    'config',
    'config/cucumber.yml',
    'features',
    'features/step_definitions',
    'features/step_definitions/web_steps.rb',
    'features/support',
    'features/support/env.rb',
    'features/support/factories.rb',
    'features/support/negative_expectations_helper.rb',
    'features/support/paths.rb',
    'features/support/selectors.rb',
    'lib',
    'lib/gemspec.rb',
    'lib/generators',
    'lib/generators/templates',
    'lib/generators/templates/features',
    'lib/generators/templates/features/support',
    'lib/generators/templates/features/support/paths.rb',
    'lib/generators/testing_generator.rb',
    'lib/refinerycms-testing.rb',
    'lib/tasks',
    'lib/tasks/cucumber.rake',
    'lib/tasks/rcov.rake',
    'refinerycms-testing.gemspec',
    'spec',
    'spec/rcov.opts',
    'spec/spec_helper.rb',
    'spec/support',
    'spec/support/refinery',
    'spec/support/refinery/controller_macros.rb'
  ]
end
