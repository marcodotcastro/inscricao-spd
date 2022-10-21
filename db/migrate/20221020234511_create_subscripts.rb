class CreateSubscripts < ActiveRecord::Migration[7.0]
  def change
    create_table :subscripts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :description
      t.string :language
      t.string :schooling

      t.timestamps
    end
  end
end
