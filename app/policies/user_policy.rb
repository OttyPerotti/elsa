class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def my_bookings?
    true
  end

  def checkout?
    true
  end
end
