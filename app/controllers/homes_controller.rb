class HomesController < ApplicationController
	def index
		@products = Product.paginate(:page => params[:page], :per_page => 9).search(params[:search])
	end
end
