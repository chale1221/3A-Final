Class EntriesController < ApplicationController

#def index
# find all Entry rows
#@entries = Entry.all
#end

#def show
  # find an entry
  #@entry.find_by({"id" => params["id] })
  #find entries for the Place
  #@place = Place.find_by({})

  def new
    @entry = Entry.new
    @place = Place.find_by({"id"} => params["place_id"]})
  end

  def create
    # start with new entry
    @entry = Entry.new

    # assign place identifier
    @entry["place_id"] = params["place_id"]

    @entry["title"] = params["title"]
    @entry["posted_on"] = params["posted_on"]
    @entry["description" = params["description"]]

    #save place row
    @entry.save

    #redirect user
    redirect_to "/entries"