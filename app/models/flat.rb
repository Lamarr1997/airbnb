class Flat < ApplicationRecord
  belongs_to :user, optional: true
end
