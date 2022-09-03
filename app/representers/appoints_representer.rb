class AppointsRepresenter
  def initialize(appoints)
    @appoints = appoints
  end
  
  def as_json
    @appoints.map do |appoint|
      {
        customer: appoint.customer,
        counsellor: appoint.counsellor,
        date: appoint.date,
        appoint: appoint.starttime,
        appoint: appoint.endtime
      }
    end
  end
end