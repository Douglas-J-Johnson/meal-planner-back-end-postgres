class ListItem < ApplicationRecord
    has_many :list_entries, through: :list_entry_list_items
end
