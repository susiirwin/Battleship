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

  ###generate_ship_locations
  ### generate first unit --- save to variable like first
  ### generate second unit(first) -save this to varaible like second
  ## generate third unit(second)
 #### the above would be first boat - you could pull this out into its own method
 ### any code after this would need to look at first boat and make sure it is not overlapping
 

end
