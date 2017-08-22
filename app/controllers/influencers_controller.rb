class InfluencersController < ApplicationController

  before_action :set_influencers, only: [:show, :edit]
  skip_before_action :authenticate_user!, only: [:index]


  def index
    @category = params[:category]
    @language = params[:language]
    @pseudo = params[:pseudo]
    @avatar = params[:avatar]
    @influencers = Influencer.all
  end

  def show
    @influencers = Influencer.all
  end

  def new
    @influencer = Influencer.new
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

def set_influencers
  @influencer = Influencer.find(params[:id])
end

 def influencers_params
   params.require(:influencer).permit(:pseudo, :description, :language, :category, :first_name, :last_name, :image, :avatar)
 end

end
