class ListEntry < ApplicationRecord
  belongs_to :list
  has_many :list_entries, through: :list_entry_list_items
end
