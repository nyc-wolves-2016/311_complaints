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
          view.complaint_display(result)
          view.separator
          end
      end

  end
end