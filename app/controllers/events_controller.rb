class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :edit, :new]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @participants = Attendance.where(event_id: @event.id)
    @admin_of_event = @event.admin
    @date_end = @event.start_date + @event.duration
    @participant_current = Attendance.where(event_id: @event.id).find_by(participant_id: current_user.id)
    @button_condition = @participant_current.nil? == true && current_user != @event.admin
  end

  def edit
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(start_date: params['start_date'], duration: params['duration'], title: params['title'], description: params['description'], price: params['price'], location: params['location'])
    redirect_to root_path
    else
      render :new
    end
  end
    

  def new
  end

  def create
    @new_event = Event.new(start_date: params['start_date'], duration: params['duration'], title: params['title'], description: params['description'], price: params['price'], location: params['location'], admin_id: current_user.id)

    if @new_event.save
      redirect_to root_path
    else
      redirect_to new_event_path
    end

  end

  def destroy
    @event = Event.find(params[:id])

    if @event.destroy
      redirect_to root_path
    else
      render :new
    end
  end

end