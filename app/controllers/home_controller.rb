class HomeController < ApplicationController
  
  def get_data(pg)
    require 'net/http'
    require "uri"
    require 'json'

    require "uri"
    require "net/http"

    url_concat = "https://www.orulo.com.br/api/v2/buildings" + "?page=" + @actual_page.to_s

    puts url_concat

    uri = URI(url_concat)

    https = Net::HTTP.new(uri.host, uri.port)
    https.use_ssl = true

    request = Net::HTTP::Get.new(uri)
    request["Authorization"] = "Bearer VDqfisFJS9-8yiLluw3fvII-lILi7WjHNjDGAg9jMbU"
    # request["Cookie"] = "__cfduid=dbd1f177c4e7521fd632668a02c8f9fbe1608400451; ahoy_visitor=09b58ffa-9e44-4a67-8442-82d14a104c9a; AWSALB=wtFpowu0fW+YYEj3ZXnW2noe9Y0V4MwROqcYTtBss86nm8Kuo2qoMPGO3jqvolHNvsZIGhckuD+i/Pa6x0mNR6Uc1N8q9P+ozB1OLM0RDDRrGbtmfRrqSkAWGPg5; AWSALBCORS=wtFpowu0fW+YYEj3ZXnW2noe9Y0V4MwROqcYTtBss86nm8Kuo2qoMPGO3jqvolHNvsZIGhckuD+i/Pa6x0mNR6Uc1N8q9P+ozB1OLM0RDDRrGbtmfRrqSkAWGPg5; ahoy_visit=15414424-5ac3-41d7-abf8-e83baf53024a"

    response = https.request(request)
    
    # puts response.read_body
    
    # puts "Tipo/Classe do objeto: #{response.class}"

    @output = response.read_body
  
    @datasource = JSON.parse(@output)

    @buildings = @datasource["buildings"]

    @actual_page = @datasource["page"]

    @total_pages = @datasource["total_pages"]

    # puts @datasource

  end

  def index(pg = 1)

    @actual_page = pg

    get_data(@actual_page)
    
    puts @actual_page

  end

end
