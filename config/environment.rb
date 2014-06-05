# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

SCHEDULE_ID ||= ENV['SCHEDULE_ID']
ADMIN_PASSWORD ||= ENV['ADMIN_PASSWORD']
