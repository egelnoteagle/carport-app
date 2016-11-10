class VehiclesController < ApplicationController
before_action :authenticate_user!

  def index
    @vehicles = current_user.vehicles
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vin = Unirest.get("https://vpic.nhtsa.dot.gov/api/vehicles/decodevin/#{params[:vin_num]}*BA?format=json").body
    @vehicle = Vehicle.new(
                        make: @vin["Results"][5]["Value"].titleize,
                        model: @vin["Results"][7]["Value"], 
                        year: @vin["Results"][8]["Value"],
                        trim: @vin["Results"][11]["Value"],
                        style: params[:style],
                        color: params[:color],
                        vin_num: params[:vin_num],
                        vehicle_nickname: params[:vehicle_nickname],
                        license_state: params[:license_state],
                        license_number: params[:license_number],
                        user_id: current_user.id,
                        image: params[:image]
                        )
    @vehicle.save
    @vehicle_id = @vehicle.id

    @mileage = Mileage.new(
                           mileage_reading: params[:mileage_reading],
                           vehicle_id: @vehicle_id)
    @mileage.save

    flash[:success] = "New Vehicle Saved!"
    redirect_to "/vehicles/#{@vehicle.id}"

  end

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    @vehicle = Vehicle.find(params[:id])
    @vehicle.update(
                                make: params[:make],
                                model: params[:model], 
                                year: params[:year],
                                trim: params[:trim],
                                style: params[:style],
                                color: params[:color],
                                vin_num: params[:vin_num],
                                vehicle_nickname: params[:vehicle_nickname],
                                license_state: params[:license_state],
                                license_number: params[:license_number])

    flash[:success] = "Vehicle Updated"
    redirect_to "/vehicles/#{@vehicle.id}"
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy

    flash[:warning] = "Vehicle Removed"
    redirect_to "/mygarage"
  end

  def recalls
    @vehicle = Vehicle.find(params[:id])
    @recall = @vehicle.recall_list
  end
end
