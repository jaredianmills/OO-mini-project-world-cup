class Player

  attr_reader :name, :team

  def initialize(name, team)
    @name = name
    @team = team
  end

  ALL = []

  def self.all
    ALL
  end

  def matches_played
    Match.all.select do |match|
      match.teams.include?(self.team)
    end
  end

end
