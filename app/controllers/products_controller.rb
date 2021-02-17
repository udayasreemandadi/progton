class ProductsController < ApplicationController
def exit
  	products = Product.scanned_items
  	render json: {data: {products: products.pluck(:name),Total_amount: products.sum("price")}}
  end

  def scanner
  	product = Product.find_by(params[:barcode])
  	if product.present?
  		product.update(scanned: true)
  		render json: product
  	else
  		render "Product not found"
  	end
  end


end
