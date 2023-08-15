class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :title
      t.date :startdate
      t.date :enddate
      t.text :memo
      t.boolean :altday, null: false, default: false

      t.timestamps
    end
  end
end
