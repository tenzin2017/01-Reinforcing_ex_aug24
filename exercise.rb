class Location

  def initialize(name)
    @name = name
  end

  def name
    @name
  end


end


class Trip

  @@locations = []

  def initialize
  end


 def self.add(name)
     @@locations << name
     name
 end

  def start
    puts "Began Trip"
    @@locations.each_cons(2) do |location|
      puts "Travelled from #{location[0].name} to #{location[1].name}"
    end
      puts "Ended trip"
    end

  def self.all
     @@locations
  end

end

toronto = Location.new("Toronto")
puts Trip.add(toronto).inspect

ottawa = Location.new("Ottawa")
puts Trip.add(ottawa)

montreal = Location.new("Montreal")
Trip.add(montreal)

quebec = Location.new("Quebec City")
Trip.add(quebec)

halifax = Location.new("Halifax")
Trip.add(halifax)

st_john = Location.new("St. Joh's")
Trip.add(st_john)

lobsang = Trip.new
puts lobsang.start
