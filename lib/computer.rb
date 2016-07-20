class Computer
  def initialize
  end

  def generate_first_unit
    first_letter_options.sample + first_number_options.sample
  end

  def first_letter_options
    ["A", "B", "C", "D"]
  end

  def first_number_options
    ["1", "2", "3", "4"]
  end

end
