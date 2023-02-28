# frozen_string_literal: true

# Written by Forest J. Handford (She/Her)

require_relative 'find_adjacent_keywords'

describe FindAdjacentKeywords do
  let(:find_adjacent_keywords) { FindAdjacentKeywords.new }

  it 'process_list finds the salutations' do
    expect(FindAdjacentKeywords.process_list(%w[goodbye bye welcome salutations bye salutations later bye goodbye],
                                             %w[bye later salutations])).to eq([4, 5])
  end
end
