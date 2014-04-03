class AddUserIdToRepairRequest < ActiveRecord::Migration
  def change
    add_column :repair_requests, :user_id, :integer
  end
end
