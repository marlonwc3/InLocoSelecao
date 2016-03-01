class RemoveRememberable < ActiveRecord::Migration
  def change
  	 remove_columns :users, :remember_created_at
  end
end
