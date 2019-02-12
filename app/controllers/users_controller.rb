class UsersController < ApplicationController
  before_action :authenticate_user!,
  only: [:show]
 

   def show
    @user = User.find(params[:id])
    @event_create = Event.where(admin_id: @user)
  end
end