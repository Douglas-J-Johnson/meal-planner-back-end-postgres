class CreateListEntryListItems < ActiveRecord::Migration[6.0]
  def change
    create_table :list_entry_list_items do |t|
      t.references :list_entry, null: false, foreign_key: true
      t.references :list_items, null: false, foreign_key: true

      t.timestamps
    end
  end
end
