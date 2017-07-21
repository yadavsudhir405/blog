class Bowling

  attr_reader  :score

  def inspect
    @score=0;
  end

  def hit_pin(pin_count)
     @score+=pin_count
  end
end