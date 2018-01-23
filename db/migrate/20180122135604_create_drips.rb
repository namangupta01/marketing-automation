class CreateDrips < ActiveRecord::Migration[5.1]
  def change
    create_table :drips do |t|
    	t.string :name
    	t.references :type
    	t.integer :drip_number
    	t.references :template
    	t.references :campaign
    	t.datetime :date_time
      	t.timestamps
    end
  end
end
