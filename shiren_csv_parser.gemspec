require_relative 'lib/shiren_csv_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "shiren_csv_parser"
  spec.version       = ShirenCsvParser::VERSION
  spec.authors       = "masayuki-0319"
  spec.email         = "moomoofarm.hokkaido@gmail.com"

  spec.summary       = %q{My practice module for Furai no Shiren.}
  spec.description   = %q{My csv parser. Target is SFC ItemList.}
  spec.homepage      = "https://github.com/masayuki-0319/shiren_csv_parser"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/masayuki-0319/shiren_csv_parser"
  spec.metadata["changelog_uri"] = "https://github.com/masayuki-0319/shiren_csv_parser/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
