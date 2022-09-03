class AppointRepresenter
  def initialize(appoint)
    @appoint = appoint
  end
  
  def as_json
    {
      customer: @appoint.customer,
      counsellor: @appoint.counsellor,
      time: @appoint.time,
      date: @appoint.date,
      appoint: @appoint.starttime,
      appoint: @appoint.endtime
    }
  end
end