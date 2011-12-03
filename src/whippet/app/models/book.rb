class Book < ActiveRecord::Base
	validates :title, :isbn, :presence => true
	validates :isbn, :length => { :is => 10 } 
	validates :isbn, :numericality => { :only_integer => true }
end
