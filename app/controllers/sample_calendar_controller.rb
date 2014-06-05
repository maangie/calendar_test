require 'rexml/document'
require 'open-uri'

class SampleCalendarController < ApplicationController
  def index
    @availability = Availability.new
    @availability.find_by_from_time
  end
end
