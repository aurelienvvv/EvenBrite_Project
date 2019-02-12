class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @participants = Attendance.where(event_id: @event.id).count
    @admin_of_event = @event.admin
    @date_end = @event.start_date + @event.duration
  end

  def end_date
    @event.start_date + @event.duration
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

end