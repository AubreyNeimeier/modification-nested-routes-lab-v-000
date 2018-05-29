module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_select(@song)
    if params[:artist_id].nil?
      link_to "Add Artist", edit_artist_song_path(@song.artist, @song) if @song.artist
    else
      @song.artist.name
    end

end
