require "test_helper"

class EntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should create entry" do
    entry = Entry.new(meal_type: "Breakfast", calories: 500, proteins: 50, carbohydrates: 50, fats: 50)
    assert entry.save
  end
  
  test "should not create entry" do
    entry = Entry.new(calories: 500, proteins: 50, carbohydrates: 50, fats: 50)
    assert_not entry.save
  end
end
