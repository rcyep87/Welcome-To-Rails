class UsersController < ApplicationController

  def index
    user = User.all
      user_array = user.map do |x|
        "Name: #{x.first_name} #{x.last_name}, Age: #{x.age}"
      end
    render text: "#{user_array}"
  end

  def show
    user = User.find(params[:id])
    render text: "Name: #{user.full_name} Age: #{user.age}", status: 200
  end

end
