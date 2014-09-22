lib = File.expand_path('../lib/guard', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'catalog'

Gem::Specification.new do |spec|
  spec.name          = 'guard-catalog'
  spec.version       = Guard::Catalog::VERSION
  spec.authors       = ['Samuel Garneau']
  spec.email         = ['sam@garno.me']
  spec.description   = 'Automatic folder clean up with Catalog.'
  spec.summary       = 'Automatic folder clean up with Catalog.'
  spec.homepage      = 'https://github.com/garno/guard-catalog'
  spec.license       = 'BSD 3-Clause'

  spec.files         = Dir.glob('{lib}/**/*')
  spec.require_path  = 'lib'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'

  spec.add_dependency 'guard', '~> 2.6'
end
