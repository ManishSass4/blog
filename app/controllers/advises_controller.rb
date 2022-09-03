class AdvisesController < ApplicationController
  def index
    advises = Advise.all
    render json: AdvisesRepresenter.new(advises).as_json
  end

  def create
    time = Time.now.strftime("%I:%M%p")
    date = DateTime.now.to_date
    # if date == appoint.date and the time.now is in between appointment time 
    #then can give a advise
    appoint = Appoint.find(params[:appoint_id])
    if appoint.date.to_date == date
      if appoint.starttime.to_time.strftime("%I:%M%p") <= time || time <= appoint.endtime.to_time.strftime("%I:%M%p")
        # create advise
        advise = advise.new(advise_params)
        render json: AdviseRepresenter.new(advise).as_json
      else 
        render json: {}
      end  
    else
      render json: {}
    end

  end


  private
  def advise_params
    params.require(:advise).permit(:body, :counsellor_id, :customer_id, :appoint_id)
  end

end
