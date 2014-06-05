require 'rexml/document'
require 'open-uri'

class Availability
  include REXML

  def find_by_from_time
    url = "http://www.supersaas.com/api/free/#{SCHEDULE_ID}.xml?"\
          "from=2014-06-05%2000:00:00&password=#{ADMIN_PASSWORD}"
    
    doc = Document.new(open(url)).root
    Rails.logger.debug "doc: #{doc.inspect}"
  end
end
