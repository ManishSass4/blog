class FeedbacksController < ApplicationController

  def index
    feedbacks = Feedback.all
    render json: FeedbacksRepresenter.new(feedbacks).as_json
  end
  
  def create
    time = Time.now.strftime("%I:%M%p")
    date = DateTime.now.to_date
    appoint = Appoint.find(params[:appoint_id])
    if appoint.date.to_date <= date
      if time >= appoint.endtime.to_time.strftime("%I:%M%p")
        feedback = Feedback.new(feedback_params)  
        render json: FeedbackRepresenter.new(feedback).as_json
      end  
    else
      render json: {}
    end
    render json: {}
  end

  private
    def feedback_params
      params.require(:feedback).permit(:date, :time, :counsellor_id, :customer_id, :body, :appoint_id)
    end


end