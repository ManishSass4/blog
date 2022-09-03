require "jwt"
module JsonWebToken
  extend ActiveSupport::concern
  SECRETE_KEY = Rails.application.secret_key_base
  def jwt_encode(payload, exp = 7.days.from_now)
  	payload[:exp] = exp.to_i
  	JWT.encode(payload, SECRETE_KEY)
  end

  def self.decode(token)
  	decoded_token = JWT.decode(token,SECRET_kEY)[0]
    HashWithIndifferentAcess.new decode
  end
end