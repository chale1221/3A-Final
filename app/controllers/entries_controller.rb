class EntriesController < ApplicationController

  def new
    @entry = Entry.new
    @place = Place.find_by({"id" => params["place_id"] })
  end

  def create
    # start with new entry
    @entry = Entry.new

    # assign place identifier
    @entry["place_id"] = params["place_id"]
    @entry["title"] = params["title"]
    @entry["posted_on"] = params["posted_on"]
    @entry["description"] = params["description"]

    #save place row
    @entry.save

    #redirect user
    redirect_to "/entries"

  end

end