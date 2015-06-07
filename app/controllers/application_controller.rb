require 'mongo'
include Mongo

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def initialize 
  	super()
  	@db = MongoClient.new("localhost", 27017).db("yinghuix_com")
	@users = @db["users"]
  end
end
