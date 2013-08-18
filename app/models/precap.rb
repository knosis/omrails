class Precap < ActiveRecord::Base
  attr_accessible :description

  validates :description, presence: true, length: { in: 15..80 }
end
