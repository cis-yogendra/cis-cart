class CategoriesController < ApplicationController
	def index
		@categories = Category.where(parent_id: nil).paginate(:page => params[:page], :per_page => 2).search(params[:search])
	end
	def show
		@category = Category.find(params[:id])
	end
end
