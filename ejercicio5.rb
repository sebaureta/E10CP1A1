module Herviboro
    
    @@definir = 'Solo me alimento de vegetales!'
  
    def self.definir
      @@definir
    end
  
    def dieta
      "Soy un Herviboro!"
    end
end
  
  class Animal
    def saludar
      "Soy un animal!"
    end
  end
  
  class Conejo < Animal 
    def initialize(name)
      @name = name
    end
    include Herviboro
  end
  
  conejo = Conejo.new('Bugs Bunny')
  conejo.saludar
  conejo.dieta
  puts Herviboro.definir