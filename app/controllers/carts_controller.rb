class CartsController < ApplicationController
	before_filter :authenticate_user!
	def show
		@cart = Product.find(params[:id])
	end
end
