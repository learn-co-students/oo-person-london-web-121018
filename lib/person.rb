# your code goes here
class Person
    attr_reader :name,:happiness
    attr_accessor :bank_account, :hygiene



    def initialize(name)
      @name = name

      @happiness = 8
      @hygiene = 8
      @bank_account = 25

    end

    def hygiene=(hygiene)
      @hygiene = hygiene
      if @hygiene > 10
        @hygiene = 10
      elsif @hygiene < 0
        @hygiene = 0

      end
# binding.pry
    end
def happiness=(happiness)
  @happiness = happiness
  if @happiness > 10
    @happiness = 10
  elsif @happiness < 0
    @happiness = 0

  end

end

    def bank_account= (bank_account)
      @bank_account = bank_account

    end
    def clean?
      @hygiene > 7 ? true : false

    end

    def happy?
      @happiness > 7 ? true : false

    end

    def get_paid(salary)
      @bank_account += salary

    "all about the benjamins"

    end

    def take_bath
      self.hygiene +=4

      # hygiene1 = self.hygiene
      # if hygiene1 >= 6
      #
      # else
      #   hygiene1 += 4
      #   self.hygiene(hygiene1)
      # end

      # @hygiene >10 ? nil : hygiene= += 4
     "♪ Rub-a-dub just relaxing in the tub ♫"

    end

    def work_out
      self.happiness += 2
      self.hygiene -= 3
      "♪ another one bites the dust ♫"

    end


    def call_friend(friend)
      self.happiness += 3
      friend.happiness +=3
      "Hi #{friend.name}! It's #{self.name}. How are you?"

    end

    def start_conversation(friend,topic)

      if topic == "politics"
        self.happiness -= 2
        friend.happiness -=2
        'blah blah partisan blah lobbyist'
      elsif topic == "weather"
        self.happiness += 1
        friend.happiness +=1
        'blah blah sun blah rain'
      else
        'blah blah blah blah blah'
      end

    end











end
