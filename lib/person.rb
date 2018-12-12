require "pry"
class Person
  attr_accessor :bank
  def initialize(name, happiness=8, hygiene=8)
    @name = name
    @bank = 25
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(level)
    if level < 0
      @happiness = 0
    elsif level > 10
      @happiness = 10
    else
      @happiness = level
    end
  end

  def hygiene=(level)
    if level < 0
      @hygiene = 0
    elsif level > 10
      @hygiene = 10
    else
      @hygiene = level
    end
  end

  def happiness
    @happiness
  end

  def hygiene
    @hygiene
  end
end
binding.pry
p "end"
