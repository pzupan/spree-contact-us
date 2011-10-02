class AbilityDecorator
  include CanCan::Ability

  def initialize(user)
      can :manage, Inquiry
  end
end

Ability.register_ability(AbilityDecorator)
