class OrdersController < ApplicationController
	def new
		@order = Order.new
	end
	def show
		@order = Order.find(params[:id])
	end
	def edit
		@order = Order.find(params[:id])
	end
	def create
		@order = Order.new(params[:order])
		if @order.save
			redirect_to @order
		else
			render 'new'
		end
	end
	def update
		@order = Order.find(params[:id])
		if @order.update_attributes(params[:order])
			redirect_to order_path(@order)
		else
			render 'edit'
		end
	end
	def callback
	  @order   = Order.find(params[:id])
	  logger.debug params[:DR]
	  @notification = ActiveMerchant::Billing::Integrations::Ebs::Notification.new(params[:DR].to_s)
	  logger.debug "Success -- #{@notification.successful?}"
	  if @notification.successful?
	    render :action => 'success'
	  else
	    render :action => 'failure'
	  end
	end
end
