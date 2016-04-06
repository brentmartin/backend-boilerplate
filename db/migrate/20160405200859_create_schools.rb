class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name,        null: false
      t.string :motto,       null: false
      t.string :location,    null: false

      t.timestamps null: false
    end
  end
end
