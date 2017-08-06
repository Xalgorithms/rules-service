require 'sneakers'
require 'multi_json'

class Worker
  include Sneakers::Worker

  def work(m)
    event(MultiJson.decode(m))
    ack!
  end
end
