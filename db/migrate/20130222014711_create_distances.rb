class CreateDistances < ActiveRecord::Migration
  def change
    create_table :distances do |t|
      t.float :distance

      t.timestamps
    end
  end
end
