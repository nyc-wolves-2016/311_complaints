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
          view.display(result.created_date)
          view.display(result.complaint_type)
          view.display(result.descriptor)
          view.display(result.incident_address)
          view.display(result.incident_zip)
          view.display(result.city)
          view.display(result.status)
          view.separator
          end
      end

  end
end