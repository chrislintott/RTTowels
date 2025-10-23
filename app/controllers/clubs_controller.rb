class ClubsController < ApplicationController
  def index
    @clubs = Club.order(:name)
    respond_to do |format|
      format.html
      format.json { render json: @clubs }
    end
  end

  def show
    @club = Club.find(params[:id])
  end

  def status
    club = Club.find(params[:id])
    render json: { id: club.id, name: club.name, supplies_towels: club.supplies_towels, notes: club.notes }
  end
end
