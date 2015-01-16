require ('contact')
require ('rspec')

describe('#name') do
  it ('Checks to see if class Contact returns a name') do
    name_test = Name.new({:name => "Dude"})
    name_test.save()
    phone_test = Phone.new({:phone => "1111111111"})
    phone_test.save()
    contact_test = Contact.new({:name => name_test, :phone => phone_test})
    contact_test.save()
    expect(contact_test.name().name()).to(eq("Dude"))
  end
end

describe('#phone') do
  it ('Checks to see if class Contact returns a phone number') do
    name_test = Name.new({:name => "Dude"})
    name_test.save()
    phone_test = Phone.new({:phone => "1111111111"})
    phone_test.save()
    contact_test = Contact.new({:name => name_test, :phone => phone_test})
    contact_test.save()
    expect(contact_test.phone().phone()).to(eq("1111111111"))
  end
end

describe('#phone') do
  it ('Checks to see if class Contact returns multiple phone numbers') do
    name_test = Name.new ({:name => "Dude"})
    name_test.save()
    phone_test = Phone.new({:phone => "1111111111, 2222222222"})
    phone_test.save()
    contact_test = Contact.new({:name => name_test, :phone => phone_test})
    contact_test.save()
    expect(contact_test.phone().phone()).to(eq("1111111111, 2222222222"))
  end
end

describe('#find') do
  it ('Checks class Contact for an instance and returns it if found') do
    Contact.clear()
    name_test = Name.new({:name => "Dude"})
    name_test.save()
    phone_test = Phone.new({:phone => "1111111111"})
    phone_test.save()
    contact_test = Contact.new({:name => name_test, :phone => phone_test})
    contact_test.save()
    expect(Contact.find("Dude")).to(eq(contact_test))
  end
end
