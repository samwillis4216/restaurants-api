class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    # record : @restaurant
    record.user == user
  end

  def create?
    true
  end

  def destroy?
    create?
  end
end
