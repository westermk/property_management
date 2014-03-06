class AddSubmitterIdToRepairRequest < ActiveRecord::Migration
  def change
    add_column :repair_requests, :submitter_id, :integer
  end
end
