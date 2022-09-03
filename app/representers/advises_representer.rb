class AdvisesRepresenter
  def initialize(advices)
    @advices = advices
  end
  
  def as_json
    @advices.map do |advice|
      {
        counsellor: advice.counsellor,
        customer: advice.customer,
        feedback: advice.body
      }
    end
  end  
end