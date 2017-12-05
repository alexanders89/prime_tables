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

  describe 'list' do
    it 'will generate the first 10 primes' do
      expect(Prime.list).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
    end

    it 'will generate a user specified number of primes' do
      expect(Prime.list(5)).to eq [2, 3, 5, 7, 11]
      expect(Prime.list(20)).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71]
    end

    it 'can generate large numbers of primes' do
      expect((Prime.list(20000)).count).to eq 20000
    end
  end
end
