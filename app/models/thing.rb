class Thing < ActiveRecord::Base
	  validates :name, length: { minimum: 2 }
	  validates :description, length: { maximum: 1000 }
	  validates :description, length: { minimum: 2 }
	  validates :name, length: { maximum: 100 }
	  belongs_to :user
end
