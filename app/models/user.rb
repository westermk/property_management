class User < ActiveRecord::Base    
  acts_as_authentic  
  
  belongs_to :lease
  
  has_many :submitledrepons, :class_name => 'RepairRequest'
  has_many :approvedreports, :class_name => 'RepairRequest'
  has_many :payments

  has_and_belongs_to_many :roles
  
  def has_role?(role_sym)
    #Is user a manager or renter
    roles.any? { |r| r.name.underscore.to_sym == role_sym} #returns true or false
  end

end
