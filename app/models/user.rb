class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :pictures_attributes
  # attr_accessible :title, :body

  has_many :pictures, :as => :resource, :dependent => :destroy
  accepts_nested_attributes_for :pictures, :allow_destroy => true


  scope :admin_users, where(:admin => true)
  scope :users, where(:admin => false)

  
  def is_admin?
     return self.admin == true
  end	

  def banned?
    return self.blocked
  end

  def block_users_from_list(user_ids)
    users =  User.where("id in (?)" ,user_ids )
    users.each do |user|
      user.update_attribute(:blocked , true)
    end
  end  
end
