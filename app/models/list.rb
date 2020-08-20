class List < ApplicationRecord
  belongs_to :week
  has_many :list_entries
end
