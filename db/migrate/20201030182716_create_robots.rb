class CreateRobots < ActiveRecord::Migration[6.0]
  def change
    create_table :robots do |t|
      t.belongs_to :user
      t.string :name
      t.string :type
      t.timestamps
    end
  end
end