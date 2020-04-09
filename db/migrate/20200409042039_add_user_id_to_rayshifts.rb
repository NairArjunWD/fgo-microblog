class AddUserIdToRayshifts < ActiveRecord::Migration[6.0]
  def change
    add_column :rayshifts, :user_id, :integer
  end
end
