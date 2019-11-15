# Written by Forest J. Handford (She/Her)

require_relative 'string'
require 'minitest/autorun'

# Class for testing
class TestString < Minitest::Test
  def test_decompression
    assert_equal 'aaa', String.new('3[a]').decompress
    assert_equal 'aaaaaaaaaa', String.new('10[a]').decompress
  end
end
