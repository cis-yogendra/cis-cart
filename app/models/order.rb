class Order < ActiveRecord::Base
   attr_accessible :name, :email, :pay_type, :address, :address_latitude, :address_longitude, :address_locality, :address_country, :accepted_terms_and_conditions, :order_confirmation, :order_token

   has_and_belongs_to_many :products

   after_create :generate_token

   PAYMENT_TYPES = [ "Check" , "Credit card" , "Purchase order" ]

   validates_acceptance_of :accepted_terms_and_conditions

  def paypal_url(return_url)
    values = {
      :business => 'seller_1229899173_biz@railscasts.com',
      :cmd => '_order',
      :upload => 1,
      :return => return_url,
      :invoice => id
    }
    products.each_with_index do |product, index|
      values.merge!({
        "amount_#{index+1}" => product.price,
        "product_name_#{index+1}" => product.product_name
      })
    end
    "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
  end

  protected

  def generate_token
  	update_attributes!(:order_token => Digest::SHA1.hexdigest(id.to_s))
  end
end
