class Admin::PreferencesController < ApplicationController

  def index
    @artist_sort_order = Artist.all.order("name desc").pluck(:name)

    @song_sort_order = Song.all.order("title asc").pluck(:title).uniq

    @allow_create_artists = "NO"

    @allow_create_songs = "NO"
  end


end
