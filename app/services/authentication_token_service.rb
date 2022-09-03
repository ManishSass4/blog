class AuthenticationTokenService
  require 'jwt'

  HMAC_SECRET = 'my$ecretK3y'
  ALGORITHM_TYPE = 'HS256'
  def self.call(customer_id)
  	payload = {customer_id: customer_id}
  	token = JWT.encode payload, HMAC_SECRET, true, { algorithm: ALGORITHM_TYPE}  	
  end

  def self.decode(token)
  	decoded_token = JWT.decode token, HMAC_SECRET, true, { algorithm: ALGORITHM_TYPE}
    decoded_token[0] {'customer_id'}
  end
end