require 'minitest/spec'
require 'minitest/autorun'
require "minitest/osx"
require 'color_pound_spec_reporter'

Minitest::Reporters.use! [ColorPoundSpecReporter.new]
