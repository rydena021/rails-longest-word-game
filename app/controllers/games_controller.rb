require_relative 'longest_word.rb'
class GamesController < ApplicationController

  def game
    @grid = generate_grid(9)
    @start_time = Time.now
  end

  def score
    end_time   = Time.now
    attempt    = params[:attempt]
    start_time = Time.parse(params[:start_time])
    grid       = params[:grid].chars
    @results = run_game(attempt, grid, start_time, end_time)
  end
end
