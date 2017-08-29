class ConversationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where('sender_id=? OR recipient_id=?', @user.id, @user.id)
    end
  end

  def create?
    !user.nil?
  end

  def show?
    true
  end
end
