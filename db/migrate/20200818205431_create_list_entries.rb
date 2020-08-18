class CreateListEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :list_entries do |t|
      t.integer :quantity
      t.string :unit_of_measure
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
