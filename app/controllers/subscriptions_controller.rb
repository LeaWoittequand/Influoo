class SubscriptionsController < ApplicationController

  def index
    @subscriptions = Subscription.all
  end

  def show
    @subscription = Subscription.find(params[:id])
    authorize(@subscription)
  end

end
