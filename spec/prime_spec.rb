require './lib/prime'

describe Prime do

  describe 'validator' do
    it 'will only test positive integers' do
      expect(Prime.valid('Alex')).to eq 'Must be an integer'
      expect(Prime.valid(1.42)).to eq 'Must be an integer'
      expect(Prime.valid(-12)).to eq 'Must be greater than 1'
    end

    it 'will return false when given a non prime number' do
      expect(Prime.valid(10)).to eq false
      expect(Prime.valid(324)).to eq false
      expect(Prime.valid(5555)).to eq false
    end
  end
end
