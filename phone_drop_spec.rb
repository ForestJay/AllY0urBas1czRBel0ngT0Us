# frozen_string_literal: true

# Written by Forest J. Handford (She/Her)

require_relative 'phone_drop'

describe PhoneDrop do
  let(:phone_drop) { PhoneDrop.new }

  it 'test_floor returns an in tact floor' do
    expect(phone_drop.test_floor).to eq(PhoneDrop::IN_TACT)
  end

  it 'FLOORS has the correct floor count' do
    expect(PhoneDrop::FLOORS.count).to eq(PhoneDrop::MAX_FLOORS)
  end

  it 'find_floor finds the correct floor in 15 drops' do
    phone_drop.find_floor
    expect(phone_drop.drops).to eq(15)
    expect(phone_drop.bottom_range).to eq(98)
  end
end
