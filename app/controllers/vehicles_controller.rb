class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.create(
                        make: params[:make],
                        model: params[:model], 
                        year: params[:year],
                        trim: params[:trim],
                        style: params[:style],
                        color: params[:color],
                        vin_num: params[:vin_num],
                        vehicle_nickname: params[:vehicle_nickname],
                        license_state: params[:license_state],
                        license_number: params[:license_number]
                        )

    flash[:success] = "New Vehicle Saved!"
    redirect_to "/vehicles#{@vehicle.id}"
  end
end
