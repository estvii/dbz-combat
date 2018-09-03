require 'rainbow'

class Combat

    def fight userAttack, enemyAttack
        ##Punch , Kick , Energy Beam


        if userAttack == "Punch" && enemyAttack == "Kick"
            puts Rainbow("YOU WIN").white.bg(:green)
        elsif userAttack == "Kick" && enemyAttack == "Energy Beam"
            puts Rainbow("YOU WIN").white.bg(:green)
        elsif   userAttack == "Energy Beam" && enemyAttack == "Punch"
            puts Rainbow("YOU WIN").white.bg(:green)
        elsif userAttack == enemyAttack
            puts Rainbow("DRAW").white
        else 
            puts Rainbow("GAMEOVER").white.bg(:red)
        end
    end

    def duel_fight

    end

end