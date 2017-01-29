# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Remote 
  attr_accessor :tv

  def initialize(remote)
    @televion = remote [:tv]
  end 
  
   def toggle_power 

      return @power = "ON"
  
    if @power == "ON"

       return  "OFF"

     else 
        return "ON"

     end 
  end 

  def increment_volume 
    @volume +=1

   end 

   def decreasement_volume
     @volume -=1
   end 

   def set_channel (number)
     @channel << number 

   end
  
end 

 class Television < Remote 
   
           attr_accessor :power, :volume, :channel

  def initialize (tributes)
    
    super 
     @power =tributes[:power]
     @volume = tributes[:volume]
     @channel = []

   end 
end 

#Driving Code

lg = Television.new({power: "ON", volume: 39 })
remote = Remote.new({tv:lg})

  result = lg.toggle_power

puts "Your Method Returned:"
puts result 

if result == "ON"
  puts "PASS"
else
  puts "FAIL"
end

 result = lg.increment_volume

puts "Your Method Returned:"
puts result

if result == 40
  puts "PASS"
else
  puts "FAIL"
end

20.times do 
  result = lg.decreasement_volume
end 

puts "Your Method Returned:"
puts result

if result == 20
  puts "PASS"
else
  puts "FAIL"
end

lg.set_channel(25)
result = lg.channel[0]

puts "Your Method Returned:"
puts result

if result == 25
  puts "PASS"
else
  puts "FAIL"
end
