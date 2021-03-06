class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @subscription = Subscription.all.last
  end

  def contact
  end

  def about
  end

  def dashboard
    dashboard_variables
  end

  def dashboard_profile
    dashboard_variables
  end

  def dashboard_favorites
    dashboard_variables
  end

  private

  def dashboard_variables
    @user = current_user
    @users = User.all.where.not(id: current_user)
    @conversations = policy_scope(Conversation)

    @favorites = @user.favorites
  end
end
