lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rap_songs/version"

Gem::Specification.new do |spec|
  spec.name          = "rap_songs"
  spec.version       = RapSongs::VERSION
  spec.authors       = ["aryaziai"]
  spec.email         = ["arya721@gmail.com"]

  spec.summary       = %q{Plays Random Song}
  spec.description   = %q{My first ruby gem. I want it to pick a random song}
  spec.homepage      = "https://github.com/aryaziai/rap_songs_gem"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/aryaziai/rap_songs_gem"
  spec.metadata["changelog_uri"] = "https://github.com/aryaziai/rap_songs_gem/blob/master/Changelog.md"

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
end
