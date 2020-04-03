class CreateRayshifts < ActiveRecord::Migration[6.0]
  def change
    create_table :rayshifts do |t|
      t.text :post

      t.timestamps
    end
  end
end
