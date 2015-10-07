class IndustryPolicy < ApplicationPolicy
  def index?
    user.present? && user.admin?
  end

  def create?
    index?
  end

  def update?
    index?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
