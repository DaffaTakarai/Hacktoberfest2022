data = {:name=>"Hack", :email=>"HACKTOBER", :created_on=>"2022-10-30"}

require 'openssl'
require 'uri'
require 'base64'
require 'json'

cipher = OpenSSL::Cipher::AES.new(256, :CBC)
cipher.encrypt

key = cipher.random_key
iv = cipher.random_iv

encrypted = cipher.update(data.to_json) + cipher.final

encoded = URI::encode(Base64.encode64(encrypted))
