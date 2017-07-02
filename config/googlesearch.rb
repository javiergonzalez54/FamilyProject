require 'sinatra'
require 'nokogiri'
require 'httparty'

get '/' do
  url = 'https://www.google.com/search?hl=en&tbm=shop&q=headphones'
  response = HTTParty.get(url)
  doc = Nokogiri::HTML(response.body)
  titles = doc.css('result-title')
  dates = doc.css('result-date')
  response.body

end
