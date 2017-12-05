class Prime

  def self.valid(number)
    invalid_endings = [0, 2, 4, 5, 6, 8]

    return 'Must be an integer' if !number.is_a? Integer
    return 'Must be greater than 1' if number <= 1

    return false if invalid_endings.include?(number % 10) && number != 2 || number != 5

  end
end
