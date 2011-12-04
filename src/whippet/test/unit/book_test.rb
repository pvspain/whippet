require 'test_helper'

class BookTest < Test::Unit::TestCase
  should_have_many(:versions)
 
  should_validate_presence_of :title
end
