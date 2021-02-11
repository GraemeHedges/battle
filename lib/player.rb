class Player
  DEFAULT_HIT_POINTS = 60
  attr_reader :name, :hit_points
  
  def initialize(name ='Player', hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def receive_damage
    @hit_points -= 10
  end
end
