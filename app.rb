require ('sinatra')
require ('sinatra/reloader')
also_reload ('lib/*/**.rb')
require ('./lib/contact')
require ('./lib/phone')
require ('./lib/name')

Contact.clear()

get ('/') do
  @contacts = Contact.all()
  erb(:form)
end

post ('/submit') do
  new_name=Name.new({:name => params.fetch('name')})
  new_name.save()
  new_phone=Phone.new({:phone => ((((((("Home phone: ").concat((params.fetch('home_phone')))).concat(" Work phone: ")).concat((params.fetch('work_phone')))).concat(" Cell phone: "))).concat((params.fetch('cell_phone'))))  })
    # ("Home phone: " + (params.fetch('home_phone')) + " Work phone: " + (params.fetch('work_phone')) + " Cell phone: "(params.fetch('cell_phone'))).concat() })
    # ((params.fetch('home_phone').concat((params.fetch('work_phone').concat((params.fetch('cell_phone'))))))) })
  new_phone.save()
  new_contact=Contact.new({:name => new_name, :phone => new_phone})
  new_contact.save()
  redirect ('/')
end

get ('/contact/:name') do
  contact= Contact.find(params.fetch('name'))
  @name = contact.name().name()
  @phone_numbers = contact.phone().phone()
  erb (:contact)
end
