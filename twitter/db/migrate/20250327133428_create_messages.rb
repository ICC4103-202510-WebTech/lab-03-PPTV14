class CreateMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
