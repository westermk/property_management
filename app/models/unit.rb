class Unit < ActiveRecord::Base
  
  belongs_to :property
  has_many :leases
  
  def has_role?(role_sym)
    #Is user a manager or renter
    roles.any? { |r| r.name.underscore.to_sym == role_sym} #returns true or false
  end
  
  def full_name
    "#{name} #{property.name}"
  end

end
