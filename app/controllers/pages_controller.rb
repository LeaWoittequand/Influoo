class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @conversations = Conversation.all

    @users = User.all.where.not(id: current_user)
    @conversations = Conversation.includes(:recipient, :messages)
  end
end
