class CarsController < ApplicationController
  def index
  end

  def create
    make = params[:make]
    model_year = params[:model_year]
    @car = Car.new(make, model_year)
  end

  def edit
    make = params[:make]
    model_year = params[:model_year]
    speed = params[:speed]
    speed = 10 if speed != 10
    @car = Car.new(make, model_year)
    @car.speed = speed
  end
end
