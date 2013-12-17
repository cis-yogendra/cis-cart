class Product < ActiveRecord::Base
  attr_accessible :price, :description, :category_id, :product_name, :quantity, :pictures_attributes
  
  belongs_to :category

  has_and_belongs_to_many :orders

  has_many :pictures, :as => :resource, :dependent => :destroy
  accepts_nested_attributes_for :pictures, :allow_destroy => true
  
  
  validates :price, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ }, :numericality => {:greater_than => 0, :less_than => 100}
  validates :description, :presence => true
  validates :product_name, :presence => true
   

     
  def self.search(search)
    if search
      find(:all, :conditions => ['product_name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
