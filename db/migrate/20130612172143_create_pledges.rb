class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      t.string :name
      t.string :email
      t.string :hourspledge
      t.string :charitytopledge

      t.timestamps
    end
  end
end
