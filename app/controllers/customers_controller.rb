class CustomersController < ApplicationController
  #include ActionController::HttpAuthentication::Token
  
  skip_before_action :authenticate_request, only: :create

  # rescue ActiveRecord::RecordNotFound, with::record_notfound 
  def index
    customers = Customer.all
    render json: CustomersRepresenter.new(customers).as_json
  end

  def show
    counsellor = Counsellor.all
    render json: CounsellorsRepresenter.new(counsellors).as_json
  end 

 
  def create
    customer = Customer.new(customer_params)
    if customer.save
      render json: CustomerRepresenter.new(customer).as_json, status: :created
    else
      render json: customer.errors, status: :unprocessable_entity
    end   
  end

  def search
    counsellor = Counsellor.find(params[:counsellor_id])
    render json: CounsellorRepresenter.new(counsellor).as_json
  end

  def is_avilable(counsellor, start_time, end_time, date)
    appoints = counsellor.appoints
    start_time = start_time.to_time.strftime("%I:%M%p")
    end_time = end_time.to_time.strftime("%I:%M%p")
    appoints.each do |appoint|
      if date == appoint.date.to_date
        if start_time.to_time < appoint.endtime && start_time > appoint.starttime
           return False
        elsif end_time < appoint.endtime && end_time > appoint.start_time
          return False
        elsif start_time < appoint.starttime && end_time > appoint.endtime 
          return False 
        end
      end
      return True
    end

  end

  private 
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :username, :password_digest) 
  end

  def record_notfound
    render json: (error.e.message), status: :unprocesable_entity
  end
    
end
