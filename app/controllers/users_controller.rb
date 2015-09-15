class UsersController < ApplicationController

  def index
    user = User.all
      user_array = user.map do |x|
        "Name: #{x.first_name} #{x.last_name}, Age: #{x.age}"
      end
    render text: "#{user_array}"
  end

  def show
    begin
      user = User.find(params[:id])
      render text: "Name: #{user.full_name} Age: #{user.age}", status: 200
    rescue ActiveRecord::RecordNotFound
      render text: "Sorry, user with id of #{params[:id]} was not found", status: 404
    end
  end

end
