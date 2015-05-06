require 'sinatra'
require 'rest-client'

class App < Sinatra::Base

  get '/api/driver/:driver_id/:api_key' do
    #get params
    driver_id = params[:driver_id]
    api_key   = params[:api_key]

    #callout
    response = RestClient.get("https://app.tcshub.com/api/driver/#{driver_id}?key=#{api_key}")
    response.body
  end

  get '/api/vehicle/:vehicle_id/:api_key' do
    #get params
    vehicle_id = params[:vehicle_id]
    api_key   = params[:api_key]

    #callout
    response = RestClient.get("https://app.tcshub.com/api/vehicle/#{vehicle_id}?key=#{api_key}")
    response.body
  end

  get '/test' do
    "yes!"
  end
end
