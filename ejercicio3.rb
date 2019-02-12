class Vehicle
    def initialize(model = "yaris", year = "2" )
      @model = model
      @year = year
      @start = false
    end
  
    def engine_start
      @start = true
    end
  end

class Car < Vehicle
    def engine_start
        puts "El motor se ha encendido"
    end

    @@instances = 0
    def initialize
        @@instances += 1
    end

    def self.get_number_of_instances
        @@instances
    end

end
 
10.times do |i|
    Car.new
end

p Car.get_number_of_instances