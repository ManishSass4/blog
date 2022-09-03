class CounsellorRepresenter
  def initialize(counsellor)
    @counsellor = counsellor
  end

  def as_json
    { 
      name: counsellor_name(counsellor),
      username: counsellor.username,
      service: counsellor.service
    }
  end

  private
  attr_reader :counsellor
  def counsellor_name(counsellor)
    "#{counsellor.first_name} #{counsellor.last_name}"
  end
end