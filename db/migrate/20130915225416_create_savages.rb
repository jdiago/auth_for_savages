class CreateSavages < ActiveRecord::Migration
  def change
    create_table :savages do |t|
      t.string :name

      t.timestamps
    end
  end
end
