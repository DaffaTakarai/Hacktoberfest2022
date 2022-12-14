require 'ip2location_ruby'

# BIN Database
i2l = Ip2location.new.open("./data/IP2LOCATION-LITE-DB1.IPV6.BIN")
record = i2l.get_all('8.8.8.8')

print 'Country Code: ' + record['country_short'] + "\n"
print 'Country Name: ' + record['country_long'] + "\n"
print 'Region Name: ' + record['region'] + "\n"
print 'City Name: ' + record['city'] + "\n"
print 'Latitude: '
print record['latitude']
print "\n"
print 'Longitude: '
print record['longitude']
print "\n"
print 'ISP: ' + record['isp'] + "\n"
print 'Domain: ' + record['domain'] + "\n"
print 'Net Speed: ' + record['netspeed'] + "\n"
print 'Area Code: ' + record['areacode'] + "\n"
print 'IDD Code: ' + record['iddcode'] + "\n"
print 'Time Zone: ' + record['timezone'] + "\n"
print 'ZIP Code: ' + record['zipcode'] + "\n"
print 'Weather Station Code: ' + record['weatherstationname'] + "\n"
print 'Weather Station Name: ' + record['weatherstationcode'] + "\n"
print 'MCC: ' + record['mcc'] + "\n"
print 'MNC: ' + record['mnc'] + "\n"
print 'Mobile Name: ' + record['mobilebrand'] + "\n"
print 'Elevation: '
print record['elevation']
print "\n"
print 'Usage Type: ' + record['usagetype'] + "\n"
print 'Address Type: ' + record['addresstype'] + "\n"
print 'Category: ' + record['category'] + "\n"

i2l.close()

# Web Service
ws = Ip2locationWebService.new('demo', 'WS25')
record = ws.lookup('8.8.8.8', 'continent,country,region,city,geotargeting,country_groupings,time_zone_info', 'en')
print record
print "\n"
print ws.get_credit()
