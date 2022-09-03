class AuthenticationTokenCounsellorService
  require 'jwt'

  HMAC_SECRET = 'my$ecretK3y'
  ALGORITHM_TYPE = 'HS256'
  def self.call(counsellor_id)
  	payload = {counsellor_id: counsellor_id}
  	token = JWT.encode payload, HMAC_SECRET, true, { algorithm: ALGORITHM_TYPE}  	
  end

  def self.decode(token)
  	decoded_token = JWT.decode token, HMAC_SECRET, true, { algorithm: ALGORITHM_TYPE}
    decoded_token[0] {'counsellor_id'}
  end
end