class Car

  attr_accessor :make, :model

  def car_speed_up
    return "goes from 0 to 100 in few seconds"
  end
end 

  this_car = Car.new
  this_car.make = "Ford"
  this_make = this_car.make
  this_car.model = "Mustang"
  this_model = this_car.model 
  puts "#{this_make} #{this_model} #{this_car.car_speed_up}"
  puts this_car.inspect
  
