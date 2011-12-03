class RemoveIsbnFromBook < ActiveRecord::Migration
  def up
   	change_table :books do |t|
  		t.remove :isbn
  	end 	
  end

  def down
   	change_table :books do |t|
  		t.string :isbn
  	end 	
  end
end
