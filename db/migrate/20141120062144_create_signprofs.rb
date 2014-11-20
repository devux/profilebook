class CreateSignprofs < ActiveRecord::Migration
  def change
    create_table :signprofs do |t|
      t.string :name
      t.text :address
      t.string :email
      t.string :phone
      t.text :qualification

      t.timestamps
    end
  end
end
