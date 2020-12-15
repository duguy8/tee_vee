class Show
  attr_reader :name,
              :creator,
              :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def actors
    actor_array = []
    characters.each do |character|
      actor_array.push(character.actor)
    end
    actor_array
  end

  def highest_paid_actor
    rich = characters.max_by do |character|
      character.salary
    end
    rich.actor
  end

  def total_salary
    salaries = []
    characters.each do |character|
      salaries.push(character.salary)
    end
    salaries.sum
  end
end
