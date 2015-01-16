class Phone
  @@allphonenumbers = []
  attr_reader(:home_phone, :work_phone, :cell_phone)
  @home_phone = ""
  @work_phone = ""
  @cell_phone = ""

  define_method(:initialize) do |attributes|
    @home_phone = attributes.fetch(:home_phone)
    @work_phone = attributes.fetch(:work_phone)
    @cell_phone = attributes.fetch(:cell_phone)
  end

  define_singleton_method(:all) do
    @@allphonenumbers
  end

  define_method(:save) do
    @@allphonenumbers.push(self)
  end

end
