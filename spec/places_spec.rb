require('rspec')
require('places')
require('pry')

describe(Places) do
  # before() do
  #   Task.clear()
  describe('#location') do
    it('gives the object a location name') do
      test_place = Places.new('Portland')
      expect(test_place.location()).to(eq('Portland'))
    end
  end


end
