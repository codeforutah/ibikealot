class AddDistancesToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.references :distance
    end
  end
end
