require 'test_helper'

class VersionTest < ActiveSupport::TestCase
  test "Should not save a version with isbn length < 10 chars" do
    version = Version.new
    assert(version.invalid?)
    assert(version.errors[:isbn].any?)
  end

  test "Should not save a version with isbn length > 10" do
  	assert false
  end

  test "Should save a version with isbn length = 10" do
  	assert false
  end

  test "Should not save a version with isbn that contains non numeric characters" do
  	assert false
  end
end
