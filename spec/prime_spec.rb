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

    it 'will return true when given a prime number' do
      expect(Prime.valid(5)).to eq true
      expect(Prime.valid(372511)).to eq true
      expect(Prime.valid(267341)).to eq true
      expect(Prime.valid(547)).to eq true
      expect(Prime.valid(2203)).to eq true
      expect(Prime.valid(6660000000001)).to eq true
    end

  end
end
