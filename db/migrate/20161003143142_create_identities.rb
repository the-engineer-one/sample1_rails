class CreateIdentities < ActiveRecord::Migration[5.0]
  def change
    create_table :identities do |t|
      t.references :user, null: false, index: true, foreign_key: true
      t.string :provider
      t.string :uid

      t.timestamps
    end
  end
end