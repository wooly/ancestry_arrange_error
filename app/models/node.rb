class Node < ApplicationRecord
  belongs_to :group

  has_ancestry
end
