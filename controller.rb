require_relative 'view'
require_relative 'complaint_result'
require_relative 'parser'
require_relative 'complaint'
require 'pry'

class Controller
  attr_reader :view, :complaints

  def initialize(args={})
    @view = args.fetch(:view)
    @complaints = args.fetch(:complaints)
    run
  end

  def run
    view.welcome
    input = nil
    until input == "exit"
      view.prompt_user_for_zip
      input = view.get_user_input
        results = Parser.parse_by(input)
        results.complaints.each do |result|
          view.complaint_display("Created Date",result.created_date)
          view.complaint_display("Complaint Type",result.complaint_type)
          view.complaint_display("Description", result.descriptor)
          view.complaint_display("Incident Address", result.incident_address)
          view.complaint_display("Incident Zip", result.incident_zip)
          view.complaint_display("City", result.city)
          view.complaint_display("Status", result.status)
          view.separator
          end
      end

  end
end