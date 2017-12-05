require './lib/table'

describe Table do
  it 'can create a multiplication array of arrays' do
    expect(Table.make_array([1,2,3])).to eq [["", 1, 2, 3], [1, 1, 2, 3], [2, 2, 4, 6], [3, 3, 6, 9]]
  end
end
