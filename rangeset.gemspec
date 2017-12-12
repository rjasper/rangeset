
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rangeset/version'

Gem::Specification.new do |spec|
  spec.name          = 'rangeset'
  spec.version       = RangeSet::VERSION
  spec.authors       = ['Rico Jasper']
  spec.email         = ['jasper.rico@gmail.com']

  spec.summary       = 'set of ranges'
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = 'https://github.com/rjasper/rangeset'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'

  spec.add_runtime_dependency 'treemap-fork', '~> 1.0', '>= 1.0.4.2'
end
