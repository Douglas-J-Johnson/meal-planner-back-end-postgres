class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      # t.name :string
      # t.references :list_entry, null: false, foreign_key: true

      # t.timestamps
    end
  end
end
