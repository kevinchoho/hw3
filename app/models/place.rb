class Place < ApplicationRecord
  # talks to the "places" table

  # a place can have many entries
  has_many :entries, dependent: :destroy
end
