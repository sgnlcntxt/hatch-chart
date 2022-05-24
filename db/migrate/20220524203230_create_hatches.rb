class CreateHatches < ActiveRecord::Migration[6.0]
  def change
    create_table :hatches do |t|
      t.references :bug, foreign_key: true
      t.references :fishery, foreign_key: true
      t.string :minimum_size
      t.string :maximum_size
      t.string :start_month
      t.integer :start_day
      t.string :end_month
      t.integer :end_day

      t.timestamps
    end
  end
end
