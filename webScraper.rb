require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'pry'
require 'csv'

studioArray= ["http://yogatothepeople.com/new-york/east-village-st-marks", "http://yogavida.com", "http://nyc.modoyoga.com", "http://yogatothepeople.com", "http://www.pureyoga.com", "http://www.theyogaroom.com", "http://www.bikramyoganyc.com", "http://www.bikramyoganyc.com", "http://www.bikramyoganyc.com", "http://www.jivamuktiyoga.nyc", "http://genesistreeoflife.com", "http://www.newyorkyoga.com", "http://www.kulayoga.com", "http://www.yogashanti.com/nyc", "http://yogavida.com", "http://www.yogatothepeople.com", "http://www.pranapoweryoga.com", "http://www.reflectionsyoga.com", "http://www.nylovesyog.com", "http://bikramyogaeastharlem.com", "http://www.devotionyoga.com"]


for i in 1..10
page = HTTParty.get(studioArray[i])
puts page

end

pry.start(binding)
