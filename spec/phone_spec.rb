require ('phone')
require ('rspec')

describe('#phone') do
  it('Checks if home phone number is input properly.') do
    phone_test = Phone.new({:home_phone => "1111111111", :work_phone => "", :cell_phone => ""})
    phone_test.save()
    expect(phone_test.home_phone()).to(eq("1111111111"))
  end
end

describe('#phone') do
  it('Checks if work phone number is input properly.') do
    phone_test = Phone.new({:home_phone => "1111111111", :work_phone => "2222222222", :cell_phone => ""})
    phone_test.save()
    expect(phone_test.work_phone()).to(eq("2222222222"))
  end
end

describe('#phone') do
  it('Checks if cell phone number is input properly') do
    phone_test = Phone.new({:home_phone => "1111111111", :work_phone => "2222222222", :cell_phone => "3333333333"})
    phone_test.save()
    expect(phone_test.cell_phone()).to(eq("3333333333"))
  end
end
