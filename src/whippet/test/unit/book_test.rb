require 'test_helper'

class BookTest < Test::Unit::TestCase
  should have_many(:versions)
 
  should validate_presence_of :title
end
