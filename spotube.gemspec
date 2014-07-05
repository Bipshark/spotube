# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spotube/version'

Gem::Specification.new do |spec|
  spec.name          = "spotube"
  spec.version       = Spotube::VERSION
  spec.authors       = ["Niklas Tegnander"]
  spec.email         = ["bipshark@gmail.com"]
  spec.summary       = %q{Fetches a result from a given Spotify track, on YouTube.}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = "spotube"
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspotify"
  spec.add_development_dependency "youtube_it"
end
