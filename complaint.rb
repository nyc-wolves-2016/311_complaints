class Complaint
  include Parser

  attr_reader :created_date, :complaint_type, :descriptor, :incident_address, :incident_zip, :city, :status
  def initialize(args = {})
    @created_date = args["created_date"]
    @complaint_type = args["complaint_type"].downcase.capitalize
    @descriptor = args["descriptor"].downcase.capitalize
    @incident_address = args["incident_address"]
    @incident_zip = args["incident_zip"]
    @city = args["city"].downcase.capitalize
    @status = args["status"].downcase.capitalize
  end

  def display
    self.each do |key, value|
      "#{key}:  #{value}"
    end
  end
end