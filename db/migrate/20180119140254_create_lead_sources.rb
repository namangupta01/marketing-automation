class CreateLeadSources < ActiveRecord::Migration[5.1]
	def change
		create_table :lead_sources do |t|
			t.string :name
	  		t.timestamps
		end
  	end
end
