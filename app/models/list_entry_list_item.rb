class ListEntryListItem < ApplicationRecord
  belongs_to :list_entry
  belongs_to :list_item
end
