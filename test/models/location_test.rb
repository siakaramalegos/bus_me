require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save location without address" do
    location = Location.new
    location.city = "Atlanta"
    assert_not location.save, "Saved the location without an address"
  end

  test "should not save location without city" do
    location = Location.new
    location.address = "1 MLK"
    assert_not location.save, "Saved the location without a city"
  end

end
