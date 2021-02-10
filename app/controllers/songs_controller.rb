class SongsController < ApplicationController
    def index
        @songs = Song.all
    end
    
    def show
        @song = Song.find(params[:id])
        @renditions = @song.renditions
    end
    
end
