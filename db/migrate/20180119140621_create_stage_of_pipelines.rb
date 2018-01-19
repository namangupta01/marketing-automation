class CreateStageOfPipelines < ActiveRecord::Migration[5.1]
  	def change
    	create_table :stage_of_pipelines do |t|
    		t.string :name
    		t.references :user
      		t.timestamps
    	end
  	end
end
