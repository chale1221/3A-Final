Class EntriesController < ApplicationController

def index
# find all Entry rows
@entries = Entry.all
end

def show
  # find an entry
  @entry.find_by({"id" => params["id] })
  #find entries for the Place
  @place = Place.find_by({})