require ('contact')
require ('rspec')

describe('#name') do
  it ('Checks to see if class contact returns a name') do
    name_test = Name.new({:name => "Dude"})
    name_test.save()
    phone_test = Phone.new({:phone => "1111111111"})
    phone_test.save()
    contact_test = Contact.new({:name => name_test, :phone => phone_test})
    contact_test.save()
    expect(contact_test.name().name()).to(eq("Dude"))
  end
end
