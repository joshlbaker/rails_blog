class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :topic
      t.string :body
      t.belongs_to :user
      t.timestamps 
    end
  end
end
