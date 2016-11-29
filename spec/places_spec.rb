require('rspec')
require('places')
require('pry')

describe(Places) do
  before() do
    Places.clear()
  end
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

  describe(".delete_instance") do
    it("deletes a Places object from a given location") do
      test_place1 = Places.new("vancouver")
      test_place1.save()
      test_place2 = Places.new("Portland")
      test_place2.save()
      Places.delete_instance("Portland")
      expect(Places.all()).to(eq([test_place1]))

    end
  end

end
