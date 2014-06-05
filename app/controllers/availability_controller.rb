class AvailabilityController < ApplicationController
  def get
    availabilities = Availability.new.find_by_from_time(params[:start])
    # binding.pry

    render :json => availabilities
  end
end
