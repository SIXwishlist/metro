module ApplicationHelper
  def get_profile_url(user)
    # Return user's profile URL
    "profile/#{user.id}"
  end
end
