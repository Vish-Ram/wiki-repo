class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :sections
      t.text :body
      t.timestamps
    end
  end
end
