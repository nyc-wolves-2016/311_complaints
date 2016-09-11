module Parser
  require 'open-uri'
  require 'json'
  require 'pry'

  def self.parse_by(input)    

    # if input =~ /\d{5}/
      query_string = "?incident_zip=" 
    # elsif input.downcase == "type"
    #   QUERY_STRING = "?complaint_type="
    # elsif input == / rubular starts with numbers, followed by letters /
    #   QUERY_STRING = "?incident_address="
    # end

  base_url =  "https://data.cityofnewyork.us/resource/fvrb-kbbt.json"
  full_query_string = query_string + input.to_s + "&$order=created_date%20DESC&$limit=20"

  jason_string_response = open(base_url + full_query_string).read
  ruby_hash_response = JSON.parse(jason_string_response)

  #iterates through array of hashes
  results = ruby_hash_response.map do |complaint|
    Complaint.new(complaint)
    end

  ComplaintResult.new(:complaints => results)
  end
  
  
  #Need Method to Convert date(string) to DATETIME

  #Need Method to convert Zip(string) to Zip(to_i)
end

