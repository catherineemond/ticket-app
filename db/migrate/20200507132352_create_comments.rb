class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.references :ticket, foreign_key: true
      t.references :author, foreign_key: true
    end
  end
end
