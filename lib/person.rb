# your code goes here
class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness
        @happiness = [@happiness, 0 , 10].sort[1]
    end 
    
    def hygiene
        @hygiene = [@hygiene,0,10].sort[1]
    end
    
    def happy?
        if @happiness > 7 
            return true
        else
            return false
        end
    end
    
    def clean?
        if @hygiene > 7 
            return true 
        else 
            return false
        end
    end
    
    def get_paid(salary)
        @bank_account = @bank_account += salary
        "all about the benjamins"
    end
    
    def take_bath
        @hygiene = @hygiene += 4
        @hygiene = [@hygiene,0,10].sort[1]
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
        @hygiene = @hygiene - 3
        @happiness = @happiness + 2
    end
    
    def call_friend(friend_name)
        @happiness = @happiness + 3
        friend_name.happiness = friend_name.happiness + 3
        # "Hi " + friend_name + "It's " + @name + ". How are you?"
    end
    
    def start_conversation(one_name, topic)
        if topic == "politics"
            @happiness = @happiness - 2
            one_name.happiness = one_name.happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            @happiness = @happiness + 1
            one_name.happiness = one_name.happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end