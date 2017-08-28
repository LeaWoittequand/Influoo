class OrdersController < ApplicationController
  def create
    subscription = Subscription.find(params[:subscription_id])
    order  = Order.create!(subscription_sku: subscription.sku, amount: subscription.price, state: 'pending')
    authorize(order)
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = Order.where(state: 'paid').find(params[:id])
    authorize(@order)
  end

end
