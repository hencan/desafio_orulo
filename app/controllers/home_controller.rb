class HomeController < ApplicationController

  def key
    require 'json'

    data_hash = JSON.parse(File.read('./app/assets/keys/key.json'))

    puts data_hash["key_orulo"]

  end
  
  def get_data()

    # puts "Page recieved in get_data"
    # puts @actual_page

    key()

    require 'net/http'
    require "uri"

    url_concat = "https://www.orulo.com.br/api/v2/buildings" + "?page=" + @actual_page.to_s

    # puts url_concat

    uri = URI(url_concat)

    https = Net::HTTP.new(uri.host, uri.port)
    https.use_ssl = true

    request = Net::HTTP::Get.new(uri)
    request['Authorization'] = 'Bearer VDqfisFJS9-8yiLluw3fvII-lILi7WjHNjDGAg9jMbU'
    request["Cookie"] = "__cfduid=dbd1f177c4e7521fd632668a02c8f9fbe1608400451; ahoy_visitor=09b58ffa-9e44-4a67-8442-82d14a104c9a; AWSALB=fC9aMS4CzDIf3ybvJIRlW4wcwLgrY/VIcOaIzx1Cq9KxYeieI9vvoe+6dr575/+guBYZyLSOQ+Be+sL+nhrOPLvXa0RKWyECOXMuQtgi2lIOoyNw2u/h+ASDWtn4; AWSALBCORS=fC9aMS4CzDIf3ybvJIRlW4wcwLgrY/VIcOaIzx1Cq9KxYeieI9vvoe+6dr575/+guBYZyLSOQ+Be+sL+nhrOPLvXa0RKWyECOXMuQtgi2lIOoyNw2u/h+ASDWtn4"
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

  def index()

    if params[:page]
    puts params[:page]
    @actual_page = params[:page]
    else
      @actual_page = 1
    end

    get_data()
    
  end

  # private

  # Only allow a list of trusted parameters through.
  # def home_params
  #   params.require(:home).permit(:page)
  # end
  


end
