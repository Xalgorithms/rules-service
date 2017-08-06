require_relative './worker'

class Envelope < Worker
  from_queue :envelope

  def event(o)
    p o
  end
end
