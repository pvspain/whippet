class AddVersionsReferenceToBook < ActiveRecord::Migration
  def change
  	change_table :books do |t|
  		t.remove :version
  	end
  end
end
