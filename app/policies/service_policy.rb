class ServicePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.near(user.address, 10)
    end
  end

  def create?
    return true
  end

  def show?
    return true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
