require ('contact')
require ('rspec')

describe('#name') do
  it ('Checks to see if class Contact returns a name.') do
    name_test = Name.new({:name => "Dude"})
    name_test.save()
    phone_test = Phone.new({:home_phone => "1111111111", :work_phone =>"", :cell_phone=>""})
    phone_test.save()
    contact_test = Contact.new({:name => name_test, :phone => phone_test})
    contact_test.save()
    expect(contact_test.name().name()).to(eq("Dude"))
  end
end

describe('#phone') do
  it ('Checks to see if class Contact returns a home phone number.') do
    name_test = Name.new({:name => "Dude"})
    name_test.save()
    phone_test = Phone.new({:home_phone => "1111111111", :work_phone =>"", :cell_phone=>""})
    phone_test.save()
    contact_test = Contact.new({:name => name_test, :phone => phone_test})
    contact_test.save()
    expect(contact_test.phone().home_phone()).to(eq("1111111111"))
  end
end

describe('#phone') do
  it ('Checks to see if class Contact returns work phone number.') do
    name_test = Name.new ({:name => "Dude"})
    name_test.save()
    phone_test = Phone.new({:home_phone => "1111111111", :work_phone =>"2222222222", :cell_phone=>""})
    phone_test.save()
    contact_test = Contact.new({:name => name_test, :phone => phone_test})
    contact_test.save()
    expect(contact_test.phone().work_phone()).to(eq("2222222222"))
  end
end

describe('#phone') do
  it ('Checks to see if class Contact returns cell phone number.') do
    name_test = Name.new ({:name => "Dude"})
    name_test.save()
    phone_test = Phone.new({:home_phone => "1111111111", :work_phone =>"2222222222", :cell_phone=>"3333333333"})
    phone_test.save()
    contact_test = Contact.new({:name => name_test, :phone => phone_test})
    contact_test.save()
    expect(contact_test.phone().cell_phone()).to(eq("3333333333"))
  end
end

describe('#find') do
  it ('Checks class Contact for an instance of Contact (searching by name) and returns the instance if found.') do
    Contact.clear()
    name_test = Name.new({:name => "Dude"})
    name_test.save()
    phone_test = Phone.new({:home_phone => "1111111111", :work_phone =>"", :cell_phone=>""})
    phone_test.save()
    contact_test = Contact.new({:name => name_test, :phone => phone_test})
    contact_test.save()
    expect(Contact.find("Dude")).to(eq(contact_test))
  end
end
