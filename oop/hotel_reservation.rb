# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end
  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

puts "TESTING Hotel Reservations"
puts

hotel_reservation = HotelReservation.new({customer_name: "Karoli Kolokonyi", data: "01/30/2017", room_number: 5})

 hotel_reservation.room_number = 7
 result = hotel_reservation.room_number

puts "Your method returned:"
puts result
puts

if result == 7
  puts "PASS"
else
  puts "FAIL"
end

hotel_reservation.add_a_fridge
result = hotel_reservation.amenities[0]

puts "Your method returned:"
puts result
puts

if result == "fridge"
  puts "PASS"
else
  puts "FAIL"
end

hotel_reservation.add_a_crib
result = hotel_reservation.amenities[1]

puts "Your method returned:"
puts result
puts

if result == "crib"
  puts "PASS"
else
  puts "FAIL"
end

hotel_reservation.add_a_custom_amenity("Hotel Phone")
result = hotel_reservation.amenities[2].

puts "Your method returned:"
puts result
puts

if result == "Hotel Phone"
  puts "PASS"
else
  puts "FAIL"
end





