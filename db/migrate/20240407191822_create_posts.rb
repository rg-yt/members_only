class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.timestamps
      t.string :title
      t.text :body
      t.belongs_to :user, foreign_key: true
    end
  end
end