class InfluencersController < ApplicationController

  before_action :set_influencers, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index]


  def index
     @influencers = policy_scope(Influencer)
    if params[:search]
      if params[:search][:category].to_i == 0
        @category = ''
      else
        @category = Category.find(params[:search][:category].to_i)
      end

      @language = params[:search][:language]
      case @language
      when "French"
        @language = "fr"
      when "English"
        @language = "en"
      when "Spanish"
        @language = "es"
      end

      @pseudo = params[:pseudo]
      @avatar = params[:avatar]
      @platform = params[:search][:platform]

      if @category != ''
        @influencers = Influencer.where(category: @category)
      end
      if @language != ''
        @influencers = @influencers.where(language: @language)
      end
      if @platform != ''
        case @platform
        when "Facebook"
          @influencers = @influencers.where("fb_url != ?", "")
        when "Instagram"
          @influencers = @influencers.where("ig_url != ?", "")
        when "Twitter"
          @influencers = @influencers.where("tw_username != ?", "")
        end
      end
    end

  end

  def show
    @influencers = Influencer.all
    @influencer = Influencer.find(params[:id])
    @order = Order.where(subscription_sku: "subscription-#{current_user.email}").first
    @subscription = Subscription.all.last
    session[:influencer_id] = @influencer.id
  end

  def new
    @influencer = Influencer.new
    authorize @influencer
  end

  def create
    authorize @influencer
  #   <-- Quand on aura dev la création de profil d'un influencer, on pourra tester les mails envoie automatique <-->
    # @influencer = current_user.influencers.build(influencer_params)

    # if @influencer.save
    #   InfluencerMailer.creation_confirmation(@influencer).deliver_now
    #   redirect_to influencer_path(@influencer)
    # else
    #   render :new
    # end
  end

  def edit
  end

  def update

    @influencer.update(influencer_params)
  end

  def destroy
  end


private

def set_influencers
  @influencer = Influencer.find(params[:id])
  authorize @influencer
end

 def influencer_params
   params.require(:influencer).permit(:pseudo, :description, :language, :category_id, :first_name, :last_name, :image, :avatar)
 end

end
