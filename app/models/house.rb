class House < ApplicationRecord
  belongs_to :user, optional: true
end
