require 'minitest/autorun'
require 'minitest/spec'
require "minitest/osx"
require 'color_pound_spec_reporter'

Minitest::Reporters.use! [ColorPoundSpecReporter.new]
