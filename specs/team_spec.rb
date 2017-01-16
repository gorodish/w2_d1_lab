require("minitest/autorun")
require("minitest/rg")
require_relative("../Team")

class TestTeam < MiniTest::Test

  def setup

    @harlem = Team.new("Harlem Globetrotters", ["Clutch", "Curly", "Beast", "Cheese", "El Gato", "Firefly"], "Curly")

  end

  def test_get_name()
    assert_equal("Harlem Globetrotters", @harlem.team_name)
  end

  def test_player_array()
    assert_equal(6, @harlem.players.length())
  end

  def test_player
    assert_equal("Clutch", @harlem.players[0])

  end

  def test_get_coach
    assert_equal("Curly", @harlem.coach)
  end

  def test_update_coach
    @harlem.update_coach("Crazy")
    assert_equal("Crazy", @harlem.coach)
  end

  def test_new_player
    @harlem.set_player("Buzzy")
    assert_equal("Buzzy", @harlem.players.last)
    assert_equal(7, @harlem.players.length)

  end

end