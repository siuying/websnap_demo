require 'rubygems'
require 'bundler'
Bundler.require :default

get '/' do
  "<html><body><img src='/google.png' /></body></html>"
end

get '/google.png' do
  content_type :png
  google = WebSnap::Snapper.new('http://google.com', :format => 'png')
  google.to_bytes
end