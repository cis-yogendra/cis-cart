class Admin::UsersController < ApplicationController
  before_filter :authenticate_admin
  layout 'admin'
  def index
    @users = User.users
  end

  def block_users
    user_ids = params[:user_list][:user_ids] 
    current_user.block_users_from_list(user_ids) if current_user.is_admin? 
    redirect_to admin_users_path , notice: 'Users updated successfully'
  end

end
