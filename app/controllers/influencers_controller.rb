class InfluencersController < ApplicationController
skip_before_action :authenticate_user!, only: [:index]

  def index
    @influencers = Influencer.all
  end

  def show
    @influencer = Influencer.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def influencers_params
    params.require(:influencer).permit(:pseudo, :description, :language)
  end
end
