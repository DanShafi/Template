class RequestPolicy < ApplicationPolicy

  def create?
    !user.employer
  end

  def confirmation?
    create?
  end

  def show?
    record.shift.job.user == user
  end

  def accept?
    record.shift.job.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
