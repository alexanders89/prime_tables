require './lib/prime'

describe Prime do

  describe 'validator' do
    it 'will only test positive integers' do
      expect(Prime.valid('Alex')).to eq 'Must be an integer'
      expect(Prime.valid(1.42)).to eq 'Must be an integer'
      expect(Prime.valid(-12)).to eq 'Must be greater than 1'
    end

    # it 'will return true given a prime number' do
    #   expect(Prime.valid(5)).to eq true
    # end
  end
end
