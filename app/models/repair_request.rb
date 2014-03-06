class RepairRequest < ActiveRecord::Base
  
  belongs_to :submitter, :class_name => 'User', :foreign_key => 'submitter_id'
  belongs_ to :responder, :class_name => 'User', :foreign_key => 'responder_id'

  
end
