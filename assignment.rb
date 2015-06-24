class Yarn
  attr_accessor :weight, :num_of_plies, :is_machine_wash, :yardage, :quantity
end

class Animal_Fiber < Yarn
  attr_accessor :is_organic, :is_next_to_skin
end

class Plant_Fiber < Yarn
  attr_accessor :is_organic
end

class Manmade_Fiber < Yarn
  attr_accessor :colorway
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

sid_snug_dk1 = Manmade_Fiber
sid_snug_dk1 = "dk"
sid_snug_dk1 = 8
sid_snug_dk1 = "Y"
sid_snug_dk1 = 179
sid_snug_dk1 = 1
sid_snug_dk1 = "455 Butter Tubs"


puts malwor1.yardage