require_relative './worker'

class Tasks < Worker
  from_queue :tasks

  def event(o)
  end
end
