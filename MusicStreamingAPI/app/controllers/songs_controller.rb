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

    # Crear un nuevo artista si se proporcionan parámetros de artista
    if artist_params.present?
      @artist = Artist.new(artist_params)
      if @artist.save
        @song.artists << @artist
      else
        render json: @artist.errors, status: :unprocessable_entity and return
      end
    end

    if @song.save
      render json: @song, include: [:artists, :album], status: :created
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  private

  def song_params
    params.require(:song).permit(
      :name,
      :duration,
      :streams,
      :album_id,
      :category_id,
      artist_ids: []
    )
  end

  def artist_params
    params.require(:artist).permit(:name, :biography) if params[:artist].present?
  end

end
