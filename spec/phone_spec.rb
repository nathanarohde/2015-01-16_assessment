require ('phone')
require ('rspec')

describe('#phone') do
  it('Inputs a phone') do
    phone_test = Phone.new({:phone => "1111111111"})
    phone_test.save()
    expect(phone_test.phone()).to(eq("1111111111"))
  end
end
