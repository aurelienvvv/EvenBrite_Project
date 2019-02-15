module Admin
  class EventsController < ApplicationController

    def index
      @event = Event.all
    end

    def new
      @event = Event.new
    end

    def create
    end

    def edit
    end

    def destroy
    end


  end
end