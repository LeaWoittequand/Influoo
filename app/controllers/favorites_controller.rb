class FavoritesController < ApplicationController

  def index
    @favorites = current_user.favorites
  end

  def create
    influencer = Influencer.find(params[:id])
    favorite = Favorite.new(influencer: influencer, user: current_user)

    authorize(favorite)
    if favorite.save
      flash[:notice] = "#{influencer.pseudo} has been add to your favorite"
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
    # @favorites = current_user.favorites.create(params[:user_id])
  end

  def destroy
    influencer = Influencer.find(params[:id])
    favorite = Favorite.find_by(influencer: influencer)
    favorite.destroy
    flash[:notice] = "#{influencer.pseudo} has been removed from your favorite"
    authorize(favorite)
    redirect_back(fallback_location: root_path)
  end

private

  def favorites_params
    params.require(:favorites).permit(:user, :infuencer)
  end


# def favorite
#     type = params[:type]
#     if type == "favorite"
#       current_user.favorites << @influencer
#       redirect_to favorite_path, notice: 'You favorited #{@room.listing_name}'

#     elsif type == "unfavorite"
#       current_user.favorites.delete(@influencer)
#       redirect_to favorite_path, notice: 'Unfavorited #{@room.listing_name}'

#     else
#       # Type missing, nothing happens
#       redirect_to favorite_path, notice: 'Nothing happened.'
#     end
# end

# private
# def set_room
#   @favorite = Favorite.find(params[:id])
# end

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

