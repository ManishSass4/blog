class FeedbackRepresenter
  def initialize(feedback)
    @feedback = feedback
  end
  
  def as_json
    {
      counsellor: @feedback.counsellor,
      customer: @feedback.customer,
      feedback: @feedback.body
    }
  end
end