class FavoritesController < ApplicationController

  def index
    @favorites = current_user.favorites
  end

  def create
    @influencer =
    @favorite = Favorite.new()

    if @favorite.save
      redirect_to influencer_path(@influencer)
    # @favorites = current_user.favorites.create(params[:user_id])
  end

  def destroy
  end

private

  def favorites_params
    params.require(:favorites).permit(:user, :infuencer)
  end

end


 # def favorite
 #    type = params[:type]
 #    if type == "favorite"
 #      current_user.favorites << @recipe
 #      redirect_to :back, notice: 'You favorited #{@recipe.name}'

 #    elsif type == "unfavorite"
 #      current_user.favorites.delete(@recipe)
 #      redirect_to :back, notice: 'Unfavorited #{@recipe.name}'

 #    else
 #      # Type missing, nothing happens
 #      redirect_to :back, notice: 'Nothing happened.'
 #    end
 #  end

