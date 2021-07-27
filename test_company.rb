# frozen_string_literal: true

# Written by Forest J. Handford (She/Her)

require_relative 'company'
require 'minitest/autorun'

# Class for testing
class TestCompany < Minitest::Test
  def test_common_cases
    facebook = Company.new
    facebook.import('facebook.yml')

    assert_equal 'Mark Zuckerburg', facebook.ceo
    assert_equal 'Facebook', facebook.name
  end
end
