class AppointsController < ApplicationController
  def index
    appoints = Appoint.all
    render json: AppointsRepresenter.new(appoints).as_json
  end

  def create
    # if now appointment with counsellor at that time
    appoints = Appoint
    if Customer.is_avilable
      appoint = Appoint.create(appoint_params)
      render json: AppointRepresenter.new(appoint).as_json
    else
      render json: {}
    end
  end


  private
    def appoint_params
      params.require(:appoint).permit(:date, :time, :counsellor_id, :customer_id, :starttime, :endtime)
    end
end
