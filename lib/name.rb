class Name
  @@allnames=[]
  # @@allnames is used to store @name in @@allcontacts (contact.rb)
  attr_reader(:name)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
  end

  define_singleton_method(:all) do
    @@allnames
  end

  define_method(:save) do
    @@allnames.push(self)
  end

end
