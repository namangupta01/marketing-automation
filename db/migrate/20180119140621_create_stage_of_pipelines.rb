class CreateStageOfPipelines < ActiveRecord::Migration[5.1]
  	def change
    	create_table :stage_of_pipelines do |t|

      	t.timestamps
    	end
  	end
end
