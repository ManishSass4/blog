class AuthenticationCounsellersController < ApplicationController
  skip_before_action :authenticate_request
  
  def login
    @counsellor = Counsellor.find_by(params[:username])
    if counsellor&.authenticate(params[:password])
      token =  jwt_decode(counsellor_id: @counsellor.id)
      rende json: {token: token}, status: :ok
    else
      render json: {error: 'unauthorized'}, status: :unauthorized
    end
  end  
end