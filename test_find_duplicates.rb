# Written by Forest J. Handford (She/Her)

require_relative 'find_duplicates'
require 'minitest/autorun'

class TestFindDupes < Minitest::Test
  def test_find_missing
    find_dupes = FindDupes.new
    find_dupes.list_dupes
    expected = []
    expected[1] = 1
    expected[3] = 1
    expected[5] = 1
    expected[8] = 1
    expected[18] = 1
    expected[22] = 2
    expected[42] = 1
    expected[59] = 1
    expected[67] = 1
    expected[88] = 3
    expected[95] = 1
    expected[133] = 1
    expected[134] = 3
    expected[163] = 1
    assert_equal expected, find_dupes.count
  end
end
