require './lib/table'

describe Table do

  it 'will only function with integers' do
    expect(Table.make_array([5, 8, 'Godfrey'])).to eq 'Only integers can be multiplied'
    expect(Table.make_array([1.23, 5.21, -3])).to eq 'Only integers can be multiplied'
  end

  it 'can create a multiplication array of arrays' do
    expect(Table.make_array([1,2,3])).to eq [["", 1, 2, 3], [1, 1, 2, 3], [2, 2, 4, 6], [3, 3, 6, 9]]
    expect(Table.make_array([2,5,10])).to eq [["", 2, 5, 10], [2, 4, 10, 20], [5, 10, 25, 50], [10, 20, 50, 100]]
    expect(Table.make_array([23, 68, 91])).to eq [["", 23, 68, 91], [23, 529, 1564, 2093], [68, 1564, 4624, 6188], [91, 2093, 6188, 8281]] 

  end
end
