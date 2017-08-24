# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + "!!!" + " :)"
#   end
# end

# p Shout.yell_happily("Yay!")
# p Shout.yell_angrily("UGH!")


#make a mixin version of the shout module instead no self. just write as a
module Shout
  def yell_angrily(words)
    "#{words}" + "!!!" + " :("
  end

  def yell_happily(words)
    "#{words}" + "!!!" + " :)"
  end
end

#write two classes representing anything that might shout, and include the Shout module in those classes
class Mom
  include Shout
end

class Son
  include Shout
end


#+ driver code

mom = Mom.new
p mom.yell_angrily("Why did you come home so late!? ")
p mom.yell_happily("So happy you got home early I have dinner for you!")