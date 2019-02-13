class AttendancesController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  
  def index
    @event = params[:event_id]
  end

  def new

  end

  def create

  end

end