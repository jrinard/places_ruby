class Places

  define_method(:initialize) do |location|
    @location = location
  end

  define_method(:location) do
    @location
  end

end
