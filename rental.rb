class Rental
  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person

    return unless @person && @book # Use a guard clause to check that both @person and @book are not nil

    @person.rentals << self
    @book.rentals << self
  end

  attr_accessor :date, :book, :person
end
