class Ability
  include CanCan::Ability

  def initialize user
    user ||= User.new

    case user.role
    when "admin"
      can :manage, :all
    when "member"
      can :read
      can :update, :lesson, :user_id => user.id
    end
  end
end