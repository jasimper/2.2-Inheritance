class Yarn
  attr_accessor :weight, :num_of_plies, :is_machine_wash, :yardage,
                :quantity, :colorway, :brand, :name

  def total_yds
    quantity * yardage
  end

  def use(type = "scarf")
    puts "I will use this yarn to make a #{type}."
  end

  def rating
    puts "Yarn is awesome!"
  end
end

class AnimalFiber < Yarn
  attr_accessor :is_organic, :is_next_to_skin
end

class PlantFiber < Yarn
  attr_accessor :is_organic
end

class ManmadeFiber < Yarn
  def rating
    puts "Acrylic yarn sucks!"
    super
  end
end

class WoolYarn < Animal_Fiber
  def use
    super("sweater")
  end
end

class AlpacaYarn < Animal_Fiber
end

class CottonYarn < Plant_Fiber  
end

malwor1 = WoolYarn.new
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

sid_snug_dk1 = ManmadeFiber.new
sid_snug_dk1.weight = "dk"
sid_snug_dk1.num_of_plies = 8
sid_snug_dk1.is_machine_wash = "Y"
sid_snug_dk1.yardage = 179
sid_snug_dk1.quantity = 1
sid_snug_dk1.colorway = "455 Butter Tubs"
sid_snug_dk1.brand = "Sidar"
sid_snug_dk1.name = "Snuggly DK"

lblcot1 = CottonYarn.new
lblcot1.weight = "aran"
lblcot1.num_of_plies = 4
lblcot1.is_machine_wash = "Y"
lblcot1.yardage = 236
lblcot1.quantity = 5
lblcot1.is_organic = "N"
lblcot1.colorway = "Avocodo"
lblcot1.brand = "Lion Brand"
lblcot1.name = "Lion Cotton"

puts lblcot1.total_yds
puts malwor1.use
puts sid_snug_dk1.rating.inspect
