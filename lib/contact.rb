class Contact
  @@allcontacts = []
  attr_reader(:name, :phone)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @phone = attributes.fetch(:phone)
  end

  define_singleton_method(:all) do
    @@allcontacts
  end

  define_method(:save) do
    @@allcontacts.push(self)
  end

  define_singleton_method(:clear) do
    @@allcontacts = []
  end

  define_singleton_method(:find) do |find_contact|
    found_contact = ""
    @@allcontacts.each() do |contact|
      if contact.name().name() == find_contact
        found_contact = contact
      end
    end
    found_contact
  end

end
