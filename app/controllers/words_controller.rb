class WordsController < ApplicationController

  def index
  end

  def show
    @word = Word.find(params[:id])
  end
  #
  # def create
  #   @word = Word.new(word_params)
  #   @word.save
  # end

  private

  def word_params
    params.require(:word).permit(:name)
  end

  end
