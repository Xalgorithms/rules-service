require_relative './worker'

class ExternalEvents < Worker
  from_queue :events

  def event(o)
    p "external: #{o}"
  end
end
