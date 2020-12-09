class Player < ApplicationRecord
  has_one :statistic
  belongs_to :team
end
