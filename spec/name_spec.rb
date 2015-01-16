require ('rspec')
require ('name')

  describe('#name') do
    it('Inputs a name') do
      test_name = Name.new({:name => "Dude"})
      test_name.save()
      expect(test_name.name()).to(eq("Dude"))
    end
  end
