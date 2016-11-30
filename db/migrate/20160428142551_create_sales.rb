class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
    	t.integer :user_id
    	t.string  :agent_id
    	t.integer :year_number
    	t.integer :week_number
        t.float :lotto
    	t.float :lotto_plus
    	t.float :euro_millions
    	t.float :euro_millions_plus
    	t.float :scratchcard
    end
  end
end
