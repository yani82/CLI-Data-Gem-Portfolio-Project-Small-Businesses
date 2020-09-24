require_relative 'lib/Mom_n_Pop/version'

Gem::Specification.new do |spec|
  spec.name          = "Mom_n_Pop"
  spec.version       = MomNPop::VERSION
  spec.authors       = ["yani82"]
  spec.email         = ["yani.iman1@gmail.com"]

  spec.summary       = %q{Find out how you can support local businesses near you with Mom n' Pop!}
  spec.homepage      = "https://github.com/yani82/Mom_n_Pop"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "json" 
  spec.add_dependency "nokogiri"
  spec.add_dependency "open-uri" 
end
