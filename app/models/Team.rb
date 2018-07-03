class Team

  attr_reader :name

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def players_on_this_team
    Player.all.select do |player|
      player.team == self
    end
  end

  def names_of_players_on_team
    players_of_this_team.map do |player|
      player.name
    end
  end

  def fans_of_this_team
    Fan.all.select do |fan|
      fan.favorite_team == self
    end
  end

  def names_of_fans
    fans_of_this_team.map do |fan|
      fan.name
    end
  end

  def opponents
    Match.all.select do |match|
      if match.team_1 == self
        match.team_2
      elsif match.team_2 == self
        match.team_1
      end
    end
  end

end
