class Car
  attr_accessor :speed

  def initialize(make, model_year)
    @make = make
    @model_year = model_year
    @speed = 0
  end

  def make
    @make
  end

  def model_year
    @model_year
  end

  def speed
    @speed
  end

end
