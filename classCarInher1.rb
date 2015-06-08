
class Vehicle
  
  def set_make=(car_make) 
    @make = car_make
  end

  def get_make
    return @make
  end 

  def set_model=(car_model)
    @model = car_model
  end

  def get_model
    return @model
  end
end 

class Car < Vehicle
  def car_speed_up
    return "goes from 0 to 100 in few seconds"
  end
end

  this_car = Car.new
  this_car.set_make = "Ford"
  this_make = this_car.get_make
  this_car.set_model = "Mustang"
  this_model = this_car.get_model 
  puts "#{this_make} #{this_model} #{this_car.car_speed_up}"
  puts this_car.inspect

  