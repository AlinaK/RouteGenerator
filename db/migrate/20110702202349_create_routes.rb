class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :from
      t.string :to
      t.integer :distance

      t.timestamps
    end
  end
end
