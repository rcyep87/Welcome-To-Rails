class UsersController < ApplicationController

  def index
    user = User.all
      user_array = user.map do |x|
        "Name: #{x.first_name} #{x.last_name}, Age: #{x.age}"
      end
    render text: "#{user_array}"
  end

end
