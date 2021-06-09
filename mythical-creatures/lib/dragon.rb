class Dragon
  attr_reader :name, :color, :rider
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @number_of_meals = 0
    @hungry = true
  end

  def hungry?
    if @number_of_meals < 3
      @hungry
    else
      @hungry = false
    end  
  end

  def eat
    @number_of_meals += 1
  end
end
