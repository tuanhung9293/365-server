class AddPhoneToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :phone_kinh_doanh, :string
    add_column :users, :phone_ky_thuat, :string
    add_column :users, :phone_thiet_ke, :string
  end
end
