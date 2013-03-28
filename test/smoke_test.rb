require 'minitest/autorun'
$:.unshift File.expand_path '../../lib', __FILE__
require 'bazaar'

class TestBazaar < MiniTest::Unit::TestCase
  def test_it_returns_something
    assert_instance_of String, Bazaar.object
  end
end