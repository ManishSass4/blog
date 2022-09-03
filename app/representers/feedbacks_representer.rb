class FeedbacksRepresenter
  def initialize(feedbacks)
    @feedbacks = feedbacks
  end
  
  def as_json
    @feedbacks.map do |feedback|
      {
        counsellor: feedback.counsellor,
        customer: feedback.customer,
        feedback: feedback.body,
      }
    end
  end  
end