# frozen_string_literal: true

# Written by Forest J. Handford (She/Her)

require_relative 'company'
require 'minitest/autorun'

# Class for testing
class TestCompany < Minitest::Test
  def test_yaml
    facebook = Company.new
    facebook.import('facebook.yml')
    value_assertions(facebook)
  end

  def test_json
    facebook = Company.new
    facebook.import('facebook.json')
    value_assertions(facebook)
  end

  def value_assertions(facebook)
    assert_equal 'Mark Zuckerburg', facebook.ceo
    assert_equal 'Facebook', facebook.name
  end
end
