class Team

attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

def update_coach(coach)
  @coach = coach
end


def set_team_name(new_name)
  @team_name = new_name
end

def set_player(new_name)
  @players.push(new_name)
end

  # def get_team_name
  #   return @team_name
  # end

  # def set_team_name(new_name)
  #   @team_name = new_name
  # end


end