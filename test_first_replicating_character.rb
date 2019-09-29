# Written by Forest J. Handford (She/Her)

require_relative 'first_replicating_character'
require 'minitest/autorun'

# Class for testing
class TestFindFirstReplicatingCharacter < Minitest::Test
  def test_common_cases
    assert_equals 'A', FirstReplicatingCharacter.new('ABCA').find
    assert_equals 'B', FirstReplicatingCharacter.new('BCABA').find
    assert_equals nil, FirstReplicatingCharacter.new('ABCA').find
  end
end
