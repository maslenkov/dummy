class AddDevice < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :external_id
      t.string :name

      t.timestamps null: false
    end
  end
end
