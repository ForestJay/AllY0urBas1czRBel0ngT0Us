# frozen_string_literal: true

# Written by Forest J. Handford (She/Her)

require_relative 'node'

describe Node do
  let(:node) { Node.new }

  it 'last? is true when last' do
    expect(node.last?).to eq(true)
  end

  it 'last? is false when not last' do
    node.next = Node.new
    expect(node.last?).to eq(false)
  end
end
