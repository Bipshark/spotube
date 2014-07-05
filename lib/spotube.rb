require 'spotube/version'

require 'rubygems'
require 'bundler/setup'
require 'rspotify'
require 'youtube_it'

module Spotube
  class Lookup
    def lookup
      if (spotify_uri = ARGV.first)

        # A Spotify track has a unique ID with the length of 22
        track = RSpotify::Track.find(spotify_uri[-22, 22])
        title = "#{track.artists.first.name} - #{track.name}"

        client = YouTubeIt::Client.new
        youtube_query = client.videos_by(query: title, categories: [:music])
        url = "http://youtu.be/#{youtube_query.videos.first.unique_id}"

        # Copy to OSX clipboard
        IO.popen('pbcopy', 'w') { |f| f << url }

        puts "#{url} has been copied to your clipboard"
      else
        puts 'No URI given...'
      end
    end
  end
end
