# frozen_string_literal: true

class FavoritePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user:)
    end
  end

  def create?
    true
  end

  def destroy?
    record.user = user
  end
end
