class Lease < ActiveRecord::Base
  validates :start_date, :end_date, :rent, presence: true

  belongs_to :unit
  has_many :renters, :class_name => "User"
  
  def has_role?(role_sym)
    #Is user a manager or renter
    roles.any? { |r| r.name.underscore.to_sym == role_sym} #returns true or false
  end
  
end
