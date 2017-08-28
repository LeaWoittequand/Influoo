class ConversationsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @conversation = Conversation.get(current_user.id, params[:user_id])
    authorize(@conversation)
    add_to_conversations

    respond_to do |format|
      format.html {redirect_to dashboard_path(influencer_id:  params[:user_id])}
      format.js
    end

  end

  def close
    @conversation = Conversation.find(params[:id])

    session[:conversations].delete(@conversation.id)

    respond_to do |format|
      format.js
    end
  end

  private

  def add_to_conversations
    session[:conversations] ||= []
    session[:conversations] << @conversation.id
  end

  def conversated?

    session[:conversations].include?(@conversation.id)

  end
end
