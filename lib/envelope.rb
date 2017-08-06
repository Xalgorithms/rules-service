require 'xa/clients/documents'

require_relative './worker'

class Envelope < Worker
  from_queue :envelope

  def event(o)
    # get the document's envelope
    Sneakers.logger.info("# requesting envelope for document (id=#{o['id']})")
    envelope = client.envelope(o['id'])
    Sneakers.logger.info("# received envelope")
  end

  private

  def client
    @client ||= XA::Clients::Documents.new('http://localhost:3000')
  end
end
