class SearchController < ApplicationController

def index
    @words = Search.for(params[:keyword])
      if @words.count == 1
        @word = @words.first
        # binding.pry
        redirect_to @word
      elsif @words.count > 1
        render 'show'
      else # no words
        render 'error'
      end
  end
end
