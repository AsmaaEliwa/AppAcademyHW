class AddPeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
    t.string :name
    t.bigint :house_id
    t.timestamps
  end
end
