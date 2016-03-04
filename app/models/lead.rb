class Lead < ActiveRecord::Base
  validates :mail, presence: true
  validates :mail, uniqueness: true
end
