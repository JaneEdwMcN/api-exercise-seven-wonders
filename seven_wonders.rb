require 'httparty'

#Starter Code:
seven_wonders = ["Great Pyramid of Giza", "Hanging Gardens of Babylon", "Colossus of Rhodes", "Pharos of Alexandria", "Statue of Zeus at Olympia", "Temple of Artemis", "Mausoleum at Halicarnassus"]

seven_wonders_hash = Hash.new
seven_wonders.each do |wonder|
  response = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?key=CHRISESGOOGLEAPIKEY&address=#{wonder}")
  parsed_response = response.parsed_response

  seven_wonders_hash[wonder] =  parsed_response["results"][0]["geometry"]["location"]
end

puts seven_wonders_hash

#{"Great Pyramid of Giza"=>{"lat"=>29.9792345, "lng"=>31.1342019}, "Hanging Gardens of Babylon"=>{"lat"=>36.169219, "lng"=>-86.787786}, "Colossus of Rhodes"=>{"lat"=>36.4517223, "lng"=>28.225215}, "Pharos of Alexandria"=>{"lat"=>31.2059377, "lng"=>29.9602747}, "Statue of Zeus at Olympia"=>{"lat"=>37.6384588, "lng"=>21.6298796}, "Temple of Artemis"=>{"lat"=>37.9497392, "lng"=>27.3640305}, "Mausoleum at Halicarnassus"=>{"lat"=>37.038132, "lng"=>27.4243849}}

#Example Output:
#{"Great Pyramind of Giza"=>{"lat"=>29.9792345, "lng"=>31.1342019}, "Hanging Gardens of Babylon"=>{"lat"=>32.5422374, "lng"=>44.42103609999999}, "Colossus of Rhodes"=>{"lat"=>36.45106560000001, "lng"=>28.2258333}, "Pharos of Alexandria"=>{"lat"=>38.7904054, "lng"=>-77.040581}, "Statue of Zeus at Olympia"=>{"lat"=>37.6379375, "lng"=>21.6302601}, "Temple of Artemis"=>{"lat"=>37.9498715, "lng"=>27.3633807}, "Mausoleum at Halicarnassus"=>{"lat"=>37.038132, "lng"=>27.4243849}}
