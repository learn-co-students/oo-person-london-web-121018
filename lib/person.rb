class Person

    attr_reader :name
    attr_accessor :bank_account


    def initialize(name, happiness = 8, hygiene = 8, bank_account  = 25)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happiness)
        if happiness < 0
             @happiness = 0
        elsif happiness > 10
            @happiness = 10
        else
            @happiness = happiness
        end
    end

    def happiness
        @happiness
    end

    def hygiene=(hygiene)
        if hygiene < 0
             @hygiene = 0
        elsif hygiene > 10
            @hygiene = 10
        else
            @hygiene = hygiene
        end
    end

    def hygiene
        @hygiene
    end


    def happy?
        if self.happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if self.hygiene > 7
            true
        else
            false
        end
    end


    def get_paid(salary)
        self.bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
            self.hygiene += 4
            return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3

        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness +=3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end


    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness +=1
            self.happiness +=1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end


Person.new("Stella")
