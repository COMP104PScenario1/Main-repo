class CreateActualusers < ActiveRecord::Migration
  def change
    create_table :actualusers do |t|
   		t.string :username
   		t.string :password_digest

      	t.timestamps
    end
  end
end
