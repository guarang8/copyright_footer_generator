# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "copyright_footer_generator/version"

Gem::Specification.new do |spec|
  spec.name          = "copyright_footer_generator"
  spec.version       = CopyrightFooterGenerator::VERSION
  spec.authors       = ["Manish"]
  spec.email         = ["manish.gauranga@gmail.com"]

  spec.summary       = %q{A method to auto-generate footer for website}
  spec.description   = %q{A simple rails helper method that can be used to auto generate footers for websites. Takes two arguments i.e name(like company name,developer name,etc.) and message(e.g All rights reserves. etc,)}
  spec.homepage      = "https://www.rubygems.org"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
