class Ability
  include CanCan::Ability
  
  def initialize(thisuser)
    thisuser ||= User.new # guest account
    
    if thisuser.has_role? :manager
      can :manage, :all
      #can :update, RepairRequest, responder_id: thisuser.id
      #cannot :create, RepairRequest
      
    elsif thisuser.has_role? :renter
      can :index, :all        
      can :manage, thisuser
      
      can :create, RepairRequest
      can :show, RepairRequest, submitter_id: thisuser.id
      
      can :create, Lease

             
    else
      can :create, :all
      cannot :create, RepairRequest
      can :index, :all
    end
  end
  
  
end
