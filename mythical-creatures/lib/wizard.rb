
class Wizard
  attr_reader :name, :bearded, :rested

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @spell_count = 0
  end

  def incantation(power)
    'sudo ' + power
  end

  def rested?
    if @spell_count < 2
      @rested
    else
      @rested = false
    end
  end

  def cast
    @spell_count += 1
    "MAGIC MISSILE!"
  end
end
