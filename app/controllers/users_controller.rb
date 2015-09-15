class UsersController < ApplicationController

  def index
    user_array = []
    User.all.each do |user|
      user_array << user.first_name
      end
    render text: "#{user_array}"
  end

end
