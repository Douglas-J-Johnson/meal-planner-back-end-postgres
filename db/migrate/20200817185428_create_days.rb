class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.string :date
      t.string :week_day
      t.references :meal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
