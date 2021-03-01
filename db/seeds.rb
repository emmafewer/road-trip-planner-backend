require 'rest-client'
i = 0
offset = 0

# url = "https://ridb.recreation.gov/api/v1/campsites?limit=106715&query=overnight&offset=0&apikey=70aa9b04-78cd-4c00-8694-7955bd9d1bfc"
# response = RestClient.get(url)
# campgrounds = JSON.parse(response) 
# byebug
# render json: campgrounds

all_campgrounds = []


until i > 101 do    
    response = RestClient.get(`https://ridb.recreation.gov/api/v1/campsites?query=overnight&offset=#{offset}&apikey=70aa9b04-78cd-4c00-8694-7955bd9d1bfc`)
    campgrounds = JSON.parse(response) 
    all_campgrounds << campgrounds
    offset = offset + 50
end
byebug