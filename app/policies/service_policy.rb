class ServicePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user
        scope.near(user.address, 20)
      else
        scope.all
      end
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
