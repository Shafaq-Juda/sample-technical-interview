=begin
birthday_cake.rb

It's your birthday! Yay! 🎂

Can you debug this BirthdayCake class in time to sing happy birthday? 🎶

Tip: Resolve the error messages before trying to make it work

Expected output:
Happy 10th Birthday!
Birthday cake with 10 blown out candles
Lighting candles...
Birthday cake with 10 lit candles
Singing happy birthday...
🎶Happy birthday to you, happy birthday to you🎶
Blowing out candles...
Birthday cake with 10 blown out candles

=end

require "active_support/all"

class BirthdayCake
  attr_accessor :age, :lit

  def initialize(age)
  return self.age = age
  return self.lit = true
  end

  def lighting_candles
    return "Lighting candles...\nBirthday cake with #{self.age} lit candles"
  end

  def candles_status
    if self.lit == true
      return "lit"
    else
      return "blown out"
    end
  end

  def greet
   return "Happy #{self.age.ordinalize} Birthday!"
  end

  def sing
   return "🎶Happy birthday to you, happy birthday to you🎶"
  end

  def to_s
    return "Birthday cake with #{self.age} #{candles_status} candles"
  end

  def BirthdayCake.celebrate(age)
    birthday_cake = BirthdayCake.new(age)
    puts birthday_cake.greet
    puts birthday_cake.to_s
    puts birthday_cake.lighting_candles
   # birthday_cake.candles_status
   # puts birthday_cake.to_s
    puts "Singing happy birthday..."
    puts birthday_cake.sing
    puts "Blowing out candles..."
    # birthday_cake.candles_status
    puts birthday_cake.to_s

    birthday_cake
  end
end

BirthdayCake.celebrate(10)
