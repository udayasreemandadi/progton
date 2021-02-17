class ProductsController < ApplicationController
def exit
  	products = Product.scanned_items
  	render json: [products.pluck(:name),products.sum("p")]
  end

  def scanner
  	@product = Product.find_by(params[:barcode])
  	if @product
  		@product.update(scanned: true)
  		render json: @product
  	else
  		render "Product not found"
  	end
  end
end
