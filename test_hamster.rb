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
    assert gen[2][0].related_to(gen[2][13])
    gen[3] = [Hamster.new(gen[2][0], gen[2][1]), Hamster.new(gen[2][2], gen[2][3]), 
              Hamster.new(gen[2][4], gen[2][5]), Hamster.new(gen[2][6], gen[2][7]),
              Hamster.new(gen[2][8], gen[2][9]), Hamster.new(gen[2][10], gen[2][11]),
              Hamster.new(gen[2][12], gen[2][13]), Hamster.new(gen[2][14], gen[2][14])]
    assert gen[3][0].related_to(gen[2][7])
  end
  
  def test_relations
    gen = []
    gen[1] = [Hamster.new(false, false), Hamster.new(false, false),
              Hamster.new(false, false), Hamster.new(false, false),
              Hamster.new(false, false), Hamster.new(false, false),
              Hamster.new(false, false), Hamster.new(false, false)]
    gen[2] = [Hamster.new(gen[1][0], gen[1][1]), Hamster.new(gen[1][2], gen[1][3]), 
              Hamster.new(gen[1][4], gen[1][5]), Hamster.new(gen[1][6], gen[1][7]), 
              Hamster.new(gen[1][4], gen[1][5]), Hamster.new(gen[1][4], gen[1][5])]
    assert ! gen[2][0].related_to(gen[2][1])
    assert ! gen[2][2].related_to(gen[2][3])
    assert gen[2][4].related_to(gen[2][5])
  end
end