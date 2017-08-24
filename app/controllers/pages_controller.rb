class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @conversations = Conversation.all
    @user = current_user

    @users = User.all.where.not(id: current_user)
    @conversations = Conversation.includes(:recipient, :messages)
    # fail
  end

  def test
  end
end
