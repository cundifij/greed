class Turn

  def roll
    5.times.map { rand(5) + 1 }
  end

end
