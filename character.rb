require 'faker'

class Character
    attr_accessor :name, :skills, :attack
    def initialize
        @name = Faker::DragonBall.character
        @skills = ["Punch", "Kick", "Energy beam"]
        @attack = nil
    end

    def display
        @name
    end

    # def getAttack (userInput)
    #     @attack = userInput       
    # end

    def userAttack(userInput)
        # @skills.each do |skill|
            # if userInput == "Punch" || userInput == "Kick" || userInput == "Energy Beam"
        if @skills.include? userInput
            @attack = userInput
        else
            puts "Invalid attack"
            "false"
            # "false"
        end
        # end
    end

    def cpuAttack
         @attack = @skills[rand(0..2)]
    end

    def test 
        @attack
    end


end