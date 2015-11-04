class CreateListelements < ActiveRecord::Migration
  def change
    create_table :listelements do |t|
		t.string :time
		t.string :task
		t.references :user
		
      	t.timestamps
    end
  end
end
