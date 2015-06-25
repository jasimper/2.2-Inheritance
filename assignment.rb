class Yarn
  attr_accessor :weight, :num_of_plies, :is_machine_wash, :yardage, :quantity

  def total_yds
    quantity * yardage
  end

end

class Animal_Fiber < Yarn
  attr_accessor :is_organic, :is_next_to_skin
end

class Plant_Fiber < Yarn
  attr_accessor :is_organic
end

class Manmade_Fiber < Yarn
  attr_accessor :colorway, :brand, :name
end

class Wool_Yarn < Animal_Fiber
  attr_accessor :colorway, :brand, :name
end

class Alpaca_Yarn < Animal_Fiber
  attr_accessor :colorway, :brand, :name
end

class Cotton_Yarn < Plant_Fiber
  attr_accessor :colorway, :brand, :name
end

malwor1 = Wool_Yarn.new
malwor1.weight = "worsted"
malwor1.num_of_plies = 1
malwor1.is_machine_wash = "N"
malwor1.yardage = 210
malwor1.quantity = 3
malwor1.is_organic = "N"
malwor1.is_next_to_skin = "Y"
malwor1.colorway = "011 Apple Green"
malwor1.brand = "Malabrigo"
malwor1.name = "Worsted"

sid_snug_dk1 = Manmade_Fiber.new
sid_snug_dk1.weight = "dk"
sid_snug_dk1.num_of_plies = 8
sid_snug_dk1.is_machine_wash = "Y"
sid_snug_dk1.yardage = 179
sid_snug_dk1.quantity = 1
sid_snug_dk1.colorway = "455 Butter Tubs"
sid_snug_dk1.brand = "Sidar"
sid_snug_dk1.name = "Snuggly DK"


puts malwor1.total_yds
puts sid_snug_dk1.total_yds
