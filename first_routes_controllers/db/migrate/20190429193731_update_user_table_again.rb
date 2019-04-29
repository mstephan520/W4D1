class UpdateUserTableAgain < ActiveRecord::Migration[5.2]
  def change

    add_column :users, :username, :string, unique: true, default: false
    # change_column_null :users, :username, false

  end
end
