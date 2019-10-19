# Written by Forest J. Handford (She/Her)

require_relative 'hamster'
require 'minitest/autorun'

# Class for testing 
class TestHamster < Minitest::Test
  def test_eve_and_adam
    gen = []
    gen[1] = [Hamster.new(false, false), Hamster.new(false, false)]
    gen[2] = [Hamster.new(gen[1][0], gen[1][1]), Hamster.new(gen[1][0], gen[1][1]), 
              Hamster.new(gen[1][0], gen[1][1]), Hamster.new(gen[1][0], gen[1][1]),
              Hamster.new(gen[1][0], gen[1][1]), Hamster.new(gen[1][0], gen[1][1]),
              Hamster.new(gen[1][0], gen[1][1]), Hamster.new(gen[1][0], gen[1][1]),
              Hamster.new(gen[1][0], gen[1][1]), Hamster.new(gen[1][0], gen[1][1]),
              Hamster.new(gen[1][0], gen[1][1]), Hamster.new(gen[1][0], gen[1][1]),
              Hamster.new(gen[1][0], gen[1][1]), Hamster.new(gen[1][0], gen[1][1])]
    assert gen[2][1].related_to(gen[2][10])
  end
end