class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def actors_by_show
    actors = []
    actors_2 = []
    @shows.map do |show|
      show.characters.each do |character|
        if actors.length < 2
          actors << character.actor
        else
          actors_2 << character.actor
        end
      end
    end
    hash = {}
    hash[shows.first] = actors
    hash[shows.last] = actors_2
    hash
  end

  def prolific_actors
    actors = []
    @shows.each do |show|
      show.characters.each do |character|
        actors << character.actor
      end
    end
    actors = actors.uniq
  end

  def shows_by_actor
    hash = {}
    @shows.each do |show|
      show.characters.each do |character|
        if character.actor == character.actor
          hash[character.actor] = show
        else
        hash[character.actor] = show
        end
      end
    end
    hash
  end

  def main_characters
    the_main_characters = []
    shows.each do |show|
        show.characters.each do |character|
          the_main_characters.push(character)
        end
    end
    array = []
    array << the_main_characters.sample
    array
  end

  def add_show(new_show)
    @shows.push(new_show)
  end
end
