class AuthenticationsController < ApplicationController
  skip_before_action :authenticate_request
  
  def login
    @customer = Customer.find_by(params[:username])
    if customer&.authenticate(params[:password_digest])
      token =  jwt_decode(customer_id: @customer.id)
      rende json: {token: token}, status: :ok
    else
      render json: {error: 'unauthorized'}, status: :unauthorized
    end
  end  
end