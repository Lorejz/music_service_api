class SongsController < ApplicationController
  # GET /songs
  def index
    @songs = Song.all
    render json: @songs, include: [:artists, :album], status: :ok
  end

  # GET /songs/1
  def show
    set_song
    render json: @song, include: [:artists, :album], status: :ok
  end

  # POST /songs
  def create
    @song = Song.new(song_params)

    if @song.save
      render json: @song, include: [:artists, :categories, :album], status: :created
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :duration, :streams, :album_id, :category_ids => [], :artist_ids => [])
  end

end
