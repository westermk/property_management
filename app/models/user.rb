class User < ActiveRecord::Base    
  acts_as_authentic  
  
  belongs_to :lease
  
  has_many :submitledrepons, :class_name => 'RepairRequest'
  has_many :approvedreports, :class_name => 'RepairRequest'

end
