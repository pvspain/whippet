class Version < ActiveRecord::Base
	belongs_to :book

 	validates :isbn, :length => { :is => 10 } 
	validates :isbn, :numericality => { :only_integer => true }
end
