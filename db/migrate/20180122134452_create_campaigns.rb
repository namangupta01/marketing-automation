class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
    	t.string :name
    	t.datetime :start_at
    	t.datetime :end_at
      t.references :type
    	t.integer :no_of_drips
      t.references :lead_group
      t.references :stage_of_pipeline
    	t.references :user
      t.timestamps
    end
  end
end
