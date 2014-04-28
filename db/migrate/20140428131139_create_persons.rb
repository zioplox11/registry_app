class CreatePersons < ActiveRecord::Migration
  def change
    create_table :people do |t|
        t.string :first_name
        t.string :last_name
        t.integer :age
        t.string :gender
        t.boolean :is_married
        t.string :email
        t.timestamps
    end
  end
end
