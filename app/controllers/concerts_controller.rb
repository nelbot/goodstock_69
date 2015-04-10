class ConcertsController < ApplicationController
  
  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new concert_params
    @concert.save
    render 'submitted_concert'
  end

  def show
    @concert = Concert.find params[:id]
    render 'submitted_concert'
  end

  def todays_concerts
    @concert = Concert.todays_concerts
    render 'todays_concerts'
  end

  private

  def concert_params
    params.require(:concert).permit(:artist, :date, :venue, :city, :ticket_price, :description)
  end
end
