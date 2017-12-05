class Prime

  def self.valid(number)
    return 'Must be an integer' if !number.is_a? Integer
    return 'Must be greater than 1' if number <= 1

  end
end
