class ChargePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end


  def create?
    true
  end

  def show?
    true
  end

   def index?
    true
  end
end
