require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save product without title" do
  product = Product.new
  assert_not product.save, "Saved the product without a title"
end

test "unique title" do
    product = Product.new
    assert !product.save
    puts product.errors[:name].join('; ')
    assert_equal "has already been taken", product.errors[:name].join('; ')
  end

end
