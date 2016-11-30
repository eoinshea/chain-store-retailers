class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
    	t.integer :user_id
    	t.string  :agent_id
    	t.integer :year_number
    	t.integer :week_number
			t.integer :jumpers
    	t.integer :jackets
    	t.integer :scarves
    	t.integer :belts
    	t.integer :shoes
    end
  end
end
