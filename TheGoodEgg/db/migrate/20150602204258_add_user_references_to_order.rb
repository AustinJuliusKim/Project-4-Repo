class AddUserReferencesToOrder < ActiveRecord::Migration
  def change
  	change_table :orders do |t|
  		t.references :user, index: true, foreign_key: true
  	end
  end
end
