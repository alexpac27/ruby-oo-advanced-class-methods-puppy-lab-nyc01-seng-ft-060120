require 'pry'

class Dog
    attr_accessor :name
    @@all = []

    def initialize (name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        @@all.map {|puppy| puts puppy.name}
    end

    def save
        @@all << self
    end

end

pluto = Dog.new("Pluto")
fido = Dog.new("Fido")
maddy = Dog.new("Maddy")
# binding.pry