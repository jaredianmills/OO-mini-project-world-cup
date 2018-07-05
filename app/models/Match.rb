class Match

  attr_reader :teams, :tournament

  def initialize(tournament, *teams)
    raise ArgumentError.new("That is not the correct number of teams for a match") if teams.size != 2
    @teams = teams
    @tournament = tournament
    ALL << self
  end

  ALL = []

  def self.all
    ALL
  end

  def team_names
    "The teams in today's matchup are #{self.teams[0]} and #{self.teams[1]}"
  end

  def players_in_this_match
    teams[0].players_of_this_team + teams[1].players_of_this_team
  end

end
