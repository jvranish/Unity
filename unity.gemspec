# coding: utf-8
auto = File.expand_path('../auto', __FILE__)
$LOAD_PATH.unshift(auto) unless $LOAD_PATH.include?(auto)
require 'unity/version'

Gem::Specification.new do |spec|
  spec.name          = "unity"
  spec.version       = Unity::VERSION
  spec.authors       = ["Mike Karlesky", "Mark VanderVoord", "Greg Williams"]
  spec.email         = ["job.vranish@gmail.com"]
  spec.summary       = %q{Simple Unit Testing for C}
  spec.description   = %q{This gem provides an interface for working with Unity, a simple unit testing for C.}
  spec.homepage      = "https://github.com/ThrowTheSwitch/Unity"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0")
  spec.bindir        = "auto"
  spec.executables   = [
    "unity_generate_module.rb",
    "unity_generate_test_runner.rb",
    "unity_parse_output.rb",
    "unity_test_summary.py",
    "unity_test_summary.rb"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["auto"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
