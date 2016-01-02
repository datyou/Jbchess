require 'net/http'
require 'kconv'

Net::HTTP.start("www.shoeisha.co.jp", 80) do |http|
    contents = http.get("/greeting")
    puts contents.body.tosjis
end