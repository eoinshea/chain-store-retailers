class AddSalesToUser < ActiveRecord::Migration
  def change
    add_reference :sales, :user, index: true
  end
end
