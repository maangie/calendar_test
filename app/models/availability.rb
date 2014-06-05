require 'rexml/document'
require 'open-uri'

class Availability
  include REXML

  def find_by_from_time(start)
    url = "http://www.supersaas.com/api/free/#{SCHEDULE_ID}.xml?"\
          "from=#{start}%2000:00:00&maxresults=100&password=#{ADMIN_PASSWORD}"

    ret = []
    Document.new(open(url)).root.elements.each do |slot|
      event =
        {title: slot.elements['title'].text,
         start: slot.attribute('start').to_s,
         end:   slot.attribute('finish').to_s}

      ret << event
    end

    ret
  end
end
