class CreateNumbers < ActiveRecord::Migration[5.2]
  def change
    create_table :numbers do |t|
      t.integer :upper_bound, default: 100
      t.integer :lower_bound, default: 0
      t.string :created_by

      t.timestamps
    end
  end
end
