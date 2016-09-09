require_relative 'view'
require_relative 'model'


class Controller
  attr_reader :view, :complaints

  def initialize(args={})
    @view = args.fetch(:view)
    @complaints = args.fetch(:complaints)
  end

  def run
    view.prompt_user_for_zip
    view.get_user_input
    





  end

end