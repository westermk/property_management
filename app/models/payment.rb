class Payment < ActiveRecord::Base
  
  attr_accessor :card_number
  
  validates :amount, :presence => true, numericality: true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :card_number, :presence => true
  
  belongs_to :user
end
