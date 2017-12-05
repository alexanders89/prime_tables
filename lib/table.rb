require 'terminal-table'

class Table

  def self.make_array(array = [1,2,3])
    return 'Only integers can be multiplied' if !array.all? {|i| i.is_a?(Integer)}
    rows = [[''] + array]
    array.each_with_index do |digit, index|
      row = array.map {|x| x * array[index]}
      row.unshift(digit)
      rows << row
    end
    rows
  end

  def self.build(array = [1,2,3])
    multiplied = self.make_array(array)
    table = Terminal::Table.new :rows => multiplied
    table
  end

end
