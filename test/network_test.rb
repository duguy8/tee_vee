require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'
require './lib/network'

class NetworkTest < Minitest::Test
  def test_network_exists
    nbc = Network.new("NBC")
  assert_instance_of Network, nbc
  end

  def test_network_has_a_name
  # skip
    nbc = Network.new("NBC")
  assert_equal "NBC", nbc.name
  end

  def test_network_has_no_shows_by_default
  # skip
    nbc = Network.new("NBC")
  assert_equal [], nbc.shows
  end

  def test_you_can_add_shows
  # skip
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])
    nbc = Network.new("NBC")
    nbc.add_show(knight_rider)
    nbc.add_show(parks_and_rec)
  assert_equal 2, nbc.shows.count
  end

  def test_for_main_characters
  # skip
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])
    nbc = Network.new("NBC")
    nbc.add_show(knight_rider)
    nbc.add_show(parks_and_rec)
  assert_equal 1, nbc.main_characters.count
  end

  def test_actors_by_show
  # skip
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])
    nbc = Network.new("NBC")
    nbc.add_show(knight_rider)
    nbc.add_show(parks_and_rec)
    display = {knight_rider => ["David Hasselhoff", "William Daniels"], parks_and_rec => ["Amy Poehler", "Nick Offerman"]}
  assert_equal display, nbc.actors_by_show
  end

  def test_actors_by_show
  skip
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    mitch = Character.new({name: "Mitch Buchannon", actor: "David Hasselhoff", salary: 1_200_000})
    baywatch = Show.new("Baywatch", "Gregory Bonann", [mitch])
    leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])
    nbc = Network.new("NBC")
    nbc.add_show(knight_rider)
    nbc.add_show(baywatch)
    nbc.add_show(parks_and_rec)
    display = {
     "David Hasselhoff" => [knight_rider, baywatch],
     "William Daniels" => [knight_rider],
     "Amy Poehler" => [parks_and_rec],
     "Nick Offerman" => [parks_and_rec]
      }
  assert_equal display, nbc.shows_by_actor
  end

  def test_prolific_actor
  # skip
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    mitch = Character.new({name: "Mitch Buchannon", actor: "David Hasselhoff", salary: 1_200_000})
    baywatch = Show.new("Baywatch", "Gregory Bonann", [mitch])
    leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])
    nbc = Network.new("NBC")
    nbc.add_show(knight_rider)
    nbc.add_show(baywatch)
    nbc.add_show(parks_and_rec)
  assert_equal ["David Hasselhoff"], nbc.prolific_actors
  end
end
