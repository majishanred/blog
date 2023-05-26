class SubscriptionsController < ApplicationController
  before_action :subscribed_user
  def create
    current_user.subscriptions.create(
      subscriber: current_user_id
      owner: @user.id
    )
  end

  private

    def subscription_params
      params.require(:subscription).permit()
    end

    def get_
      @subscribed_user = User.find_by(params[:user_id])
    end

    def check_if_user_subscribed
      if current_user.subscriptions.include?()
    end
end
