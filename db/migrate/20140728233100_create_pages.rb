class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :body
      t.string :name
      t.string :sections
      t.timestamps
    end
  end
end
