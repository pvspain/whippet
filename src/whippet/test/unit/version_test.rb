require 'test_helper'

class VersionTest < ActiveSupport::TestCase
  setup do
    @version = Version.new
  end

  test "Should not save a version with isbn length < 10 chars" do
    assert @version.invalid?
    assert @version.errors[:isbn].any?
    assert_equal "is the wrong length (should be 10 characters); is not a number", @version.errors[:isbn].join('; ')
  end

  test "Should not save a version with isbn length > 10" do
  	assert @version.invalid?
    @version.isbn = "123456789012"
    @version.edition = "first"
    assert @version.errors[:isbn].any?
    assert_equal "is the wrong length (should be 10 characters); is not a number", @version.errors[:isbn].join('; ')
  end

  test "Should save a version with isbn length = 10" do
    assert @version.invalid?
    @version.isbn = "1234567890"
    @version.edition = "first"
    assert @version.valid?
    assert_equal "", @version.errors[:isbn].join('; ')
  end

  test "Should not save a version with isbn that contains non numeric characters" do
    assert @version.invalid?
    @version.isbn = "abcdefghij"
    @version.edition = "first"
    assert @version.invalid?
    assert_equal "is not a number", @version.errors[:isbn].join('; ')
  end

end
