class Match

  attr_reader :team_1, :team_1

  def initialize(team_1, team_2, tournament)
    @team_1 = team_1
    @team_2 = team_2
    @tournament = tournament
    ALL << self
  end

  ALL = []

  def self.all
    ALL
  end

  def teams
    [self.team_1, self.team_2]
  end

  def team_names
    "The teams in today's matchup are #{self.team_1.name} and #{self.team_2.name}"
  end

  def players_in_this_match
    team_1.players_of_this_team + team_2.players_of_this_team
  end

end
