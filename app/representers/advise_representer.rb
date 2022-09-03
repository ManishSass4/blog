class AdviceRepresenter
  def initialize(advice)
    @advice = advice
  end
  
  def as_json
    {
      counsellor: @advice.counsellor,
      customer: @advice.customer,
      feedback: @advice.body
    }
    end
  end

  
  
end