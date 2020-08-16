import json
import time
import urllib.request

API=""
countryCode=""
city=""
postalCode=""
key=""
def getLocation(countryCode,city):
    #search_address="http://dataservice.accuweather.com/locations/v1/cities/"+countryCode+"/search?apikey="+API+"&q="+city+"&details=true"
    search_address="http://dataservice.accuweather.com/locations/v1/postalcodes/search?apikey="+API+"&q="+postalCode+"&details=true"
    #print(search_address)
    with urllib.request.urlopen(search_address) as search_address:
        data=json.loads(search_address.read().decode())
    #print(data)
    location_key=data[0]['Key']
    #print(location_key)
    return (location_key)

def getForcast(location_key):
    #daily_forcastURL="http://dataservice.accuweather.com/forecasts/v1/daily/1day/"+location_key+"?apikey="+API+"&details=true"
    daily_forcastURL="http://dataservice.accuweather.com/forecasts/v1/hourly/1hour/"+location_key+"?apikey="+API+"&details=true"
    with urllib.request.urlopen(daily_forcastURL) as daily_forcastURL:
        data=json.loads(daily_forcastURL.read().decode())
        x = data[0]
        print(str(x['Wind']['Speed']['Value']) + "mph ⛅️ " +str(x['Temperature']['Value']) + "°F")
        
key=getLocation(countryCode,city)    
getForcast(key)
