class CounsellorsRepresenter
  def initialize(counsellors)
  	@counsellors = counsellors
  end
  
  def as_json
	  counsellors.map do |counsellor|
	    {
	    	name: counsellor_name(counsellor),
	    	username: counsellor.username,
    end
  end

  private
	attr_reader :counsellors
	def counsellor_name(counsellor)
	  "#{counsellor.first_name} #{counsellor.last_name}"
	end
end