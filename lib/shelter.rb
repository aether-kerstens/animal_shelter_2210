class Shelter
  attr_reader :name, :capacity, :pets
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @pets = []
  end

  def add_pet(pet)
    @pets << pet
  end

  def call_pets
    @pets.map do |pet|
      "#{pet}!"
    end
  end

  def over_capacity?
    if @pets.length > @capacity
      true
    else
      false
    end
  end

  def adopt
    @pets.pop
  end
end
