class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.text :title #追記
      t.text :body

      t.timestamps
    end
  end
end
