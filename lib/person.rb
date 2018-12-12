# your code goes here

class Person
    def initialize(name)
        @name = name
        @account = 25
        @hygiene = 8
        @happiness = 8
    end
    def satisfaction
        if @hygiene > 7 || @happiness > 7
            true
        else
            false
        end
    end
    def name 
        @name
    end

    def get_paid(amount)
        @account += amount
        "all about the benjamins"
    end

    def bank_account
        @account
    end
    def bank_account=(amount)
        @account = amount
    end
    
    def hygiene=(argument)
        if argument > 10
            @hygiene = 10

        elsif argument < 0
            @hygiene = 0

        else
            @hygiene = argument
        end

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

    def happiness=(argument)
        if argument > 10
            @happiness= 10

        elsif argument < 0
            @happiness= 0

        else
            @happiness= argument
        end

    end

    def happiness
        @happiness
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def take_bath
        if self.hygiene < 10
            self.hygiene += 4
            if self.hygiene > 10
                self.hygiene = 10
            end
        end
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out 
        if self.happiness < 10 || self.hygiene > 0
            self.happiness += 2
            self.hygiene -= 3
            if self.happiness > 10
            self.happiness = 10
            end
            if self.hygiene < 0 
                self.hygiene = 0
            end
        else
            self.hygiene = 0
            self.happiness = 0
        end
        "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            
            self.happiness -=2
            person.happiness -=2
            "blah blah partisan blah lobbyist"

        elsif topic == "weather"
            self.happiness +=1
            person.happiness +=1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
