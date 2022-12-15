# frozen_string_literal: true

# Code to test the comparison of two strings represented as linked lists
# (similar to https://www.geeksforgeeks.org/compare-two-strings-represented-as-linked-lists/ )
#
# Written by Forest J. Handford (She/Her)

require_relative 'linked_list'

describe LinkedList do
  it 'compare same string size returns gt' do
    list1 = LinkedList.new('geeksa')
    list2 = LinkedList.new('geeksb')
    expect(list1.compare(list2)).to eq('>')
  end

  it 'compare diff string size returns gt' do
    list1 = LinkedList.new('geeks')
    list2 = LinkedList.new('geeksb')
    expect(list1.compare(list2)).to eq('>')
  end

  it 'compare same string size returns lt' do
    list1 = LinkedList.new('geeksb')
    list2 = LinkedList.new('geeksa')
    expect(list1.compare(list2)).to eq('<')
  end

  it 'compare diff string size returns lt' do
    list1 = LinkedList.new('geeksb')
    list2 = LinkedList.new('geeks')
    expect(list1.compare(list2)).to eq('<')
  end

  it 'compare returns =' do
    list1 = LinkedList.new('geeks')
    list2 = LinkedList.new('geeks')
    expect(list1.compare(list2)).to eq('=')
  end
end
