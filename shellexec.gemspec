lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shellexec/version'

Gem::Specification.new do |spec|
  spec.name          = 'shellexec'
  spec.version       = Shellexec::VERSION
  spec.authors       = ['Radim Janča']
  spec.email         = ['mamut3d@gmail.com']

  spec.summary       = 'Simple ruby gem for running shell commands.'
  spec.description   = 'Simple ruby gem for running shell commands. Uses timeout feature with default set for 20 seconds and has variable error messages, in case you want to hide the shell error results.'
  spec.homepage      = 'https://github.com/Mamut3D/shellexec'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.58'
end
