require_relative 'model'
require_relative 'complaint_result'
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
    results.complaints.each do |result|
    puts result.created_date
    puts result.complaint_type
    puts result.descriptor
    puts result.incident_address
    puts result.incident_zip
    puts result.city
    puts result.status
    puts "--------------------------------"
  end
end