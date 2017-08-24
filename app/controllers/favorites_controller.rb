class FavoritesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    # @favorites = current_user.favorites.create(params[:user_id])
  end

  def edit
  end

  def update
  end

  def destroy
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

