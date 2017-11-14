class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.string :name
      t.boolean :public, default: trueß
      t.text :description

      t.timestampsß
    end
  end
end
