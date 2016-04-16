require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'pry'
require 'csv'
require 'rubygems'
require 'open-uri'

studioArray = ["http://yogatothepeople.com/new-york/east-village-st-marks", "http://yogavida.com", "http://nyc.modoyoga.com", "http://yogatothepeople.com", "http://www.pureyoga.com", "http://www.theyogaroom.com", "http://www.bikramyoganyc.com", "http://www.bikramyoganyc.com", "http://www.bikramyoganyc.com", "http://www.jivamuktiyoga.nyc", "http://genesistreeoflife.com", "http://www.newyorkyoga.com", "http://www.kulayoga.com", "http://www.yogashanti.com/nyc", "http://yogavida.com", "http://www.yogatothepeople.com", "http://www.pranapoweryoga.com", "http://www.reflectionsyoga.com", "http://www.nylovesyog.com", "http://bikramyogaeastharlem.com", "http://www.devotionyoga.com"]

schedArray = []
schedules  = []
healcodes  = []

studioArray.each do |i|
	page = HTTParty.get(i) 
	doc =Nokogiri::HTML(page.body)
	schedules.push(doc.xpath('//a[contains(@href, "schedule")]').map { |link| link['href'] }
)
end

puts schedules


puts healcodes

pry.start(binding)

