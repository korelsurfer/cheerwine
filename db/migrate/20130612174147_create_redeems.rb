class CreateRedeems < ActiveRecord::Migration
  def change
    create_table :redeems do |t|
      t.string :name
      t.string :email
      t.string :city
      t.string :state
      t.string :code

      t.timestamps
    end
  end
end
