equire 'bundler'
Bundler.require

require 'sinatra/activerecord/rake'
require './connection'
require 'csv'

require_relative 'connection.rb'
ROOT_PATH = Dir.pwd
Dir[ROOT_PATH+"/models/*.rb"].each{ |file| require file }


namespace :db do 
	desc "Create game_db database"
   task :create_db do 
   	  conn = PG::Connection.open()
   	  conn.exec('CREATE DATABASE game_db;')
   	  conn.close
   	end 

end 