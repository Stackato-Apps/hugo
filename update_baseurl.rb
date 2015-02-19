# update baseurl values to the app's hostname in the generated static files so 
# links and assets are correct
require "json"

host = JSON.parse(ENV["VCAP_APPLICATION"])["application_uris"][0]

(Dir["**/*.xml"]+Dir["**/*.html"]).each do |file|
  text = File.read(file)
  text.gsub!(/yourSiteHere/i, host)
  File.open(file, "w") {|f| f.puts text}  
end
