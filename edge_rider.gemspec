lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "edge_rider/version"

Gem::Specification.new do |spec|
  spec.name = 'edge_rider'
  spec.version = EdgeRider::VERSION
  spec.required_ruby_version = '>= 2.3.0'
  spec.authors = ['Henning Koch']
  spec.email = ['henning.koch@makandra.de']

  spec.summary = 'Power tools for ActiveRecord relations (scopes)'
  spec.description = spec.summary
  spec.homepage = 'https://github.com/makandra/edge_rider'
  spec.license = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r(^exe/)) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency('activerecord', '>=3.2')

  # Development dependencies are defined in the Gemfile (therefore no `spec.add_development_dependency` directives)
end
