class PaymentsController < ApplicationController
  before_action :set_subscription
  skip_after_action :verify_authorized

  def new
  end

   def create
    @user = current_user
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @subscription.price_cents, # or amount_pennies
      description:  "Payment for subscription #{@subscription.sku}",
      currency:     @subscription.price.currency
    )

    @order = Order.create!(
      payment: charge.to_json,
      state: 'paid',
      subscription_sku: @subscription.sku + "-" + @user.email,
      amount_cents: @subscription.price_cents
    )
    redirect_to order_path(@order)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_subscription_payment_path
  end

private

  def set_subscription
    @subscription = Subscription.find(params[:subscription_id])
  end

end
