class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @friend = Friend.find(params[:friend_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @friend = Friend.find(params[:friend_id])
    @booking[:user_id] = current_user.id
    @booking[:friend_id] = @friend.id
    if @booking.save
      redirect_to friend_bookings_path(@friend)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to friends_path
  end

  private

  def booking_params
    params.require(:booking).permit(:time, :date, :location, :user_id, :friend_id)
  end
end
