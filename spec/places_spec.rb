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

  describe('.all') do
    it('returns all places') do
      expect(Places.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("stores a place in the all places array") do
      test_place = Places.new('Vancouver')
      test_place.save()
      expect(Places.all()).to(eq([test_place]))
    end
  end

  describe('.clear') do
    it('clears the all places array') do
      Places.new('vancouver').save()
      Places.clear()
      expect(Places.all()).to(eq([]))
    end
  end

end
