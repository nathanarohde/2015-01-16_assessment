class Phone
  @@allphonenumbers = []
  attr_reader(:phone)

  define_method(:initialize) do |attributes|
    @phone = attributes.fetch(:phone)
  end

  define_singleton_method(:all) do
    @@allphonenumbers
  end

  define_method(:save) do
    @@allphonenumbers.push(self)
  end

end
