class InfluencersController < ApplicationController

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
end
