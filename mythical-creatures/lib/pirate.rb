class Pirate
  attr_reader :name, :job, :booty
  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @acts_counter = 0
    @booty = 0
  end

  def cursed?
    if @acts_counter < 3
      false
    else
      true
    end
  end

  def commit_heinous_act
    @acts_counter += 1
  end

  def booty
    @booty
  end

  def rob_ship
    @booty += 100
  end

end
