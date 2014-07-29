class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :body
      t.string :name

      t.timestamps
    end
  end
end
