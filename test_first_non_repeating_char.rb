# Written by Forest J. Handford (She/Her)

require_relative 'first_unrepeated_character'
require 'minitest/autorun'

# Class for testing
class TestFindFirstUnrepeatedCharacter < Minitest::Test
  def test_common_cases
    assert_equal 'B', FirstUnrepeatedCharacter.new('ABCA').find
    assert_equal 'C', FirstUnrepeatedCharacter.new('BCABA').find
    assert_nil FirstUnrepeatedCharacter.new('ABCABC').find
    assert_equal 'D', FirstUnrepeatedCharacter.new('DBCABA').find
    assert_equal 'A', FirstUnrepeatedCharacter.new('ABC').find
  end
end
