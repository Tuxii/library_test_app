class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :isbn
      t.text :description
      t.string :cover_url
      t.string :pages_count

      t.timestamps
    end
  end
end
