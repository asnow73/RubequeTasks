require 'bundler/setup'
Bundler.require

#lib = File.expand_path('../lib', __FILE__)
#$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
#raise "XXXXXXXXXXXXXX" << $LOAD_PATH.inspect


require "minitest/autorun"

if ENV['TRAVIS']
  require 'coveralls'
  Coveralls.wear!
end

test_path = File.expand_path("..", __FILE__)
Dir["#{test_path}/fixtures/*.rb"].each do |f|
  require f
end

#require_relative 'tasks'

=begin
require 'bundler/setup'
Bundler.require
require "minitest/autorun"

if ENV['TRAVIS']
  require 'coveralls'
  Coveralls.wear!
end

class TestCase < MiniTest::Unit::TestCase
  def load_fixture(filename)
    File.read(File.dirname(__FILE__) + "/fixtures/#{filename}")
  end
end
=end
