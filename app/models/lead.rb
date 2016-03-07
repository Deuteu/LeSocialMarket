class Lead < ActiveRecord::Base
  validates :mail, presence: true
  validates :mail, uniqueness: true
  validates_format_of :mail, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
