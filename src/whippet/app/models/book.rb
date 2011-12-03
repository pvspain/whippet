class Book < ActiveRecord::Base
	validates :title, :presence => true

	has_many :versions, :dependent => :destroy
end
