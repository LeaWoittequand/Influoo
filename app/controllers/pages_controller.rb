class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def contact
  end

  def about
  end

  def dashboard
    @user = current_user

    @users = User.all.where.not(id: current_user)
    @conversations = Conversation.includes(:recipient, :messages)

    @favorites = @user.favorites
  end

end
