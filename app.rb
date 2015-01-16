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
  new_phone=Phone.new({:home_phone => params.fetch('home_phone'), :work_phone => params.fetch('work_phone'), :cell_phone => params.fetch('cell_phone') })
  new_phone.save()
  new_contact=Contact.new({:name => new_name, :phone => new_phone})
  new_contact.save()
  redirect ('/')
end

get ('/contact/:name') do
  contact= Contact.find(params.fetch('name'))
  @name = contact.name().name()
  @home_phone = contact.phone().home_phone()
  @work_phone = contact.phone().work_phone()
  @cell_phone = contact.phone().cell_phone()
  erb (:contact)
end
