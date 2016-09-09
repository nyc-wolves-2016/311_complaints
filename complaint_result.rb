class ComplaintResult
  attr_reader :complaints
  
  def initialize(args = {})
    @complaints = args.fetch(:complaints, [])
  end
end