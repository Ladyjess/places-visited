class Place

 @@all_places = []

 def initialize name
  @name = name
 end

 def name
   @name
 end

 def self.all
   @@all_places
 end

 def save
   @@all_places.push(self)
 end

 def self.clear
   @@all_places = []
 end

 def update(new_name)
   self.name.replace new_name

  
 end
end
