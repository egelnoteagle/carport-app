class MileagesController < ApplicationController
  def create
    @mileage = Mileage.new(mileage_reading: params[:mileage_reading],
                                              vehicle_id: params[:vehicle_id]
                                              )

    @mileage.save

    flash[:success] = "Mileage Updated"
  end
end
