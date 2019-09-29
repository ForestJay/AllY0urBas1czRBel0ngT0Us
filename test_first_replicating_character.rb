# Written by Forest J. Handford (She/Her)

require_relative 'first_replicating_character'
require 'minitest/autorun'

# Class for testing
class TestFindFirstReplicatingCharacter < Minitest::Test
  def test_common_cases
    assert_equal 'A', FirstReplicatingCharacter.new('ABCA').find
    assert_equal 'B', FirstReplicatingCharacter.new('BCABA').find
    assert_nil FirstReplicatingCharacter.new('ABC').find
  end
end
