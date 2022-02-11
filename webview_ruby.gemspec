# frozen_string_literal: true

require_relative "lib/webview_ruby/version"

Gem::Specification.new do |spec|
  spec.extensions << 'ext/Rakefile'
  spec.name = "webview_ruby"
  spec.version = WebviewRuby::VERSION
  spec.authors = ["Marco Concetto Rudilosso"]
  spec.email = ["marcoc.r@outlook.com"]

  spec.summary = "Ruby bindings for webview"
  spec.homepage = "https://github.com/Maaarcocr/webview_ruby"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Maaarcocr/webview_ruby"
  # spec.metadata["changelog_uri"] = "https://github.com/Maaarcocr/webview_ruby/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "ffi"
  spec.add_dependency 'rake'
  spec.add_dependency 'ffi-compiler'
  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
