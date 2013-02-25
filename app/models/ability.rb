class Ability
	include CanCan::Ability

	def initialize(user)
		if user
		can :manage, :all
		else
		can :access, :home
		end
	end
end