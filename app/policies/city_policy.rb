class CityPolicy < IndustryPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
end
