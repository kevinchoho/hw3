class Entry < ApplicationRecord
  # talks to the "entries" table

  # each entry belongs to a place
  belongs_to :place
end
