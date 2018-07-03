class Group

  attr_reader :team_1, :team_2, :team_3, :team_4

  def initialize(team_1, team_2, team_3, team_4, tournament)
    @team_1 = team_1
    @team_2 = team_2
    @team_3 = team_3
    @team_4 = team_4
    @tournament = tournament
    ALL << self
  end

  ALL = []

  def self.all
    ALL
  end

end
