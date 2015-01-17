class Phone
  @@allphonenumbers = []
  # @@allphonenumbers is used to store @home_phone,@work_phone,@cell_phone in @@allcontacts (contact.rb)
  attr_reader(:home_phone, :work_phone, :cell_phone)
  @home_phone = ""
  @work_phone = ""
  @cell_phone = ""

  # .gsub(/\D/,"") ensures that all input in phone fields will be numeric
  define_method(:initialize) do |attributes|
    @home_phone = attributes.fetch(:home_phone).gsub(/\D/, "")
    @work_phone = attributes.fetch(:work_phone).gsub(/\D/, "")
    @cell_phone = attributes.fetch(:cell_phone).gsub(/\D/, "")
  end

  define_singleton_method(:all) do
    @@allphonenumbers
  end

  define_method(:save) do
    @@allphonenumbers.push(self)
  end

end
