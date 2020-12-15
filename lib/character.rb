class Character
  attr_reader :name,
              :actor,
              :salary

  def initialize(name)
    @name = name[:name]
    @actor = name[:actor]
    @salary = name[:salary]
  end
end
