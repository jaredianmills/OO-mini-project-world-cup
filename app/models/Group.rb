class Group

  attr_reader :teams, :tournament

  def initialize(tournament, *teams)
    raise ArgumentError.new("That is not the correct number of teams for a group") if args.size != 4
    @teams = teams
    @tournament = tournament
    ALL << self
  end

  ALL = []

  def self.all
    ALL
  end

end
