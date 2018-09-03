require_relative 'character'
require_relative 'combat'
require 'rainbow'

#character = []

user=Character.new
enemy=Character.new

# user.display
# enemy.display

p "#{user.display} (1P) vs #{enemy.display} (AI)"

userAttack = "false"
while userAttack == "false" do
    puts "Please enter attack choice (Kick/Punch/Energy Beam)"
    userInput = gets.chomp.capitalize
    userAttack = user.userAttack(userInput)
end
enemyAttack = enemy.cpuAttack
puts "P1 uses #{Rainbow(userAttack).white}, Enemy uses '#{Rainbow(enemyAttack).red}"


duel=Combat.new
duel.fight(userAttack,enemyAttack)



#Future features
#p "please enter attak: (Punch/Kick/Energy Beam)"

#userInput = gets.chomp.capitalize

#p userInput