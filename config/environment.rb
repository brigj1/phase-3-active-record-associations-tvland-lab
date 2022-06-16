ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])

require_all 'app/models'

def reload
    load "app/models/actor.rb"
    load "app/models/character.rb"
    load "app/models/network.rb"
    load "app/models/show.rb"
end
