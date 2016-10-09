require 'digest/md5'

class ProfileController < ApplicationController
  def view
    @user_id = params[:id]
    @user = User.find_by_id(@user_id)
    @email_gravatar_hash = Digest::MD5.hexdigest(@user.email)
  end
end
