class Places
  @@all_places = []

  define_method(:initialize) do |location|
    @location = location
  end

  define_method(:location) do
    @location
  end

  define_singleton_method(:all) do
    @@all_places
  end

  define_method(:save) do
    @@all_places.push(self)
  end

  define_singleton_method(:clear) do
    @@all_places = []
  end

  define_singleton_method(:delete_instance) do |location|
    counter = 0
    @@all_places.each do |place|
      if place.location() == location
        @@all_places.slice!(counter)
      else
      counter += 1
      end
    end
    counter = 0
    @@all_places
  end

end
