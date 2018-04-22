class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :description

      t.timestamps
    end
  end
end
