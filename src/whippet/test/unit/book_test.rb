require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "should not save a book without title" do
    book = Book.new
    assert book.invalid?
    assert_equal "can't be blank", book.errors[:title].join('; ')
  end
end
