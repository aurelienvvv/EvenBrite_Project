class ChargesController < ApplicationController
  def new
    @event = params[:event_id]
    @event_price = Event.find(@event).price
    @event_name = Event.find(@event).title

    $event = @event
    #->Désolé pour la variable globale...
  end

  def create
    # Amount in cents
    @amount = 500

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

    if @new_attendance = Attendance.create(participant_id: current_user.id, event_id: $event, stripe_customer_id: params['stripeToken'])
      redirect_to event_path($event)
    else
      redirect_to new_charge_path
    end

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
