class Fan

  attr_reader :name, :favorite_team

  def initialize(name, favorite_team)
    @name = name
    @favorite_team = favorite_team
  end

  ALL = []

  def self.all
    ALL
  end

  def favorite_team_matches
    Match.all.select do |match|
      match.teams.include?(self.favorite_team)
    end
  end

end
