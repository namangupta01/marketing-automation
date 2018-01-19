class CreateLeadGroups < ActiveRecord::Migration[5.1]
  	def change
    	create_table :lead_groups do |t|
    		t.string :name
    		t.references :user
      		t.timestamps
    	end
  	end
end
