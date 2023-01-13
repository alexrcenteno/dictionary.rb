require "http"

puts "Welcome to the dictionary app!"
print "Please enter a word: "
word = gets.chomp

response = HTTP.get("https://api.wordnik.com/v4/word.json/witch/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=d1")
response = HTTP.get("https://api.wordnik.com/v4/word.json/witch/pronunciations?useCanonical=false&limit=50&api_key=zo")
response = HTTP.get("https://api.wordnik.com/v4/word.json/witch/examples?includeDuplicates=false&useCanonical=false&limit=5&api_key=48")

word_data = response.parse(:json)

definition = word_data[0]["text"]
pronunciation = word_data[0]["raw"]
pp examples = word_data["text"]
#word = weather_data["word"]

#puts "The defintion of #{word} is #{definition} and you pronounce it like #{pronunciation}."
