class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :pictuer
      t.string :content

      t.timestamps
    end
  end
end
