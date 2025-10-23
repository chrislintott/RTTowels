class HomeController < ApplicationController
  def index
    @clubs = Club.order(:name)
    @random_club = Club.order('RANDOM()').first
  end
end
