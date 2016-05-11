class CreateDoggies < ActiveRecord::Migration
  def change
    create_table :doggies do |t|
      t.string :name
      t.string :breed
      t.string :age
      t.string :temperment
      t.text :FunFact

      t.timestamps null: false
    end
  end
end
