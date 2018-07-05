class Tournament

  attr_reader :tournament_name

  def initialize(tournament_name)
    @tournament_name = tournament_name
  end

  def groups
    Group.all.select do |group|
      group.tournament = self
    end
  end

  def matches
    Match.all.select do |match|
      match.tournament = self
    end
  end

  def teams
    groups.map {|group| group.teams}.flatten
  end

  def fans
    Fan.all.select do |fan|
      self.teams.include?(fan.favorite_team)
    end
  end

end
