class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :open_date
      t.string :close_date

      t.timestamps
    end
  end
end
