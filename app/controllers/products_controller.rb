class ProductsController < ApplicationController
	def index
		@products = Product.paginate(:page => params[:page], :per_page => 9)
	end
	def show
		@product = Product.find(params[:id])
	end
	# def new
	# 	@product = Product.new
	# end
	# def create
	# 	@product = Product.new(params[:product])
	# 	if @product.save
	# 		redirect_to @product
	# 	else
	# 		render 'index'
	# 	end
	# end
end
