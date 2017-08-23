class InfluencerPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    !user.nil?  # Anyone can view a influencer
  end

  def create?
    !user.nil?  # Anyone can create a influencer
  end

  def update?
    record.user == user  # Only influencer creator can update it
  end

  def destroy?
    record.user == user  # Only influencer creator can update it
  end
end
