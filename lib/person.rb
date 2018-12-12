require "pry"
class Person
  attr_reader :name
  attr_accessor :bank_account

  def initialize(name, happiness=8, hygiene=8)
    @name = name
    @bank_account = 25
    @happiness = min_max(happiness)
    @hygiene = min_max(hygiene)
  end


  def happiness=(level)
    @happiness = level
    if @happiness < 0
      @happiness = 0
    elsif @happiness > 10
      @happiness = 10
    end
  end

  def hygiene=(level)
    @hygiene = level
    if @hygiene < 0
      @hygiene = 0
    elsif @hygiene > 10
      @hygiene = 10
    end
  end

  def happiness
    @happiness
  end

  def hygiene
    @hygiene
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def min_max(level)
    v_return = 0

    if level < 0
      v_return = 0
    elsif level > 10
      v_return = 10
    else
       v_return = level
    end
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"

  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when "politics"
      self.happiness -= 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end

# binding.pry
# p "end"
