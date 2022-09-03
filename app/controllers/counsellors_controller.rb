class CounsellorsController < ApplicationController
  include ActionController::HttpAuthentication::Token

  skip_before_action :authenticate_request, only: :create

  def index
    counsellors = Counsellor.all
    render json: CounsellorsRepresenter.new(counsellors).as_json
  end 

  def create
    counsellor = Counsellor.new(counsellor_params)
    if counsellor.save  
      render json: CounsellorRepresenter.new(counsellor).as_json, status: :created
    else
      render json: counsellor.errors, status: :unprocessable_entity
    end   
  end


  private 
  
  def counsellor_params
    params.require(:counsellor).permit(:first_name, :last_name, :username, :password, :service) 
  end
  
end
