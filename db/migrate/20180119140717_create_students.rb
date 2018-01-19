class CreateStudents < ActiveRecord::Migration[5.1]
	def change
    	create_table :students do |t|
    		t.string :first_name
    		t.string :last_name
    		t.string :email
    		t.string :phone_number
    		t.date :date
    		t.string :query
    		t.string :address
    		t.references :batch
    		t.references :lead_source
    		t.references :lead_group
    		t.references :stage_of_pipeline
    		t.boolean :dnd, default: false
      		t.timestamps
    	end
  	end
end
