class Rental
  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person

    if @person && @book # Check that both @person and @book are not nil
      @person.rentals << self
      @book.rentals << self
    end
  end

  attr_accessor :date, :book, :person
end
