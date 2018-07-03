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
    tournament_teams = []
    self.groups.each do |group|
      tournament_teams += [group.team_1, group.team_2, group.team_3, group.team_4]
    end
    tournament_teams
  end

  def fans
    Fan.all.select do |fan|
      self.teams.include?(fan.favorite_team)
    end
  end

end
