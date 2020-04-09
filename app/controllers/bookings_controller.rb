class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user)
  end

  def show
  end

  def new
  end

  def create
    @booking = Booking.new(booking_params)
    if Booking.save
      redirect_to
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:time, :date, :location)
  end
end
