class AddUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users, id: :uuid do |t|
      t.string :login, limit: 30
      t.string :password_digest, limit: 60

      t.timestamps
    end
  end
end
