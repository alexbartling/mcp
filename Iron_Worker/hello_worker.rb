# Worker code can be anything you want.
require 'rest_client'

puts "Starting HelloWorker at #{Time.now}"
puts RestClient.get "http://hidden-meadow-7494.herokuapp.com/workers/scrape_plates"
puts "HelloWorker completed at #{Time.now}"