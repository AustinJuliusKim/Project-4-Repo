class AddOrderStatusReferencesToOrder < ActiveRecord::Migration
  def change
  	change_table :orders do |t|
  		t.references :order, index: true, foreign_key: true
  	end
  end
end
