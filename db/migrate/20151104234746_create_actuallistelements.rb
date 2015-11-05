class CreateActuallistelements < ActiveRecord::Migration
  def change
    create_table :actuallistelements do |t|
    	t.string :time
    	t.string :task
    	t.references :actualuser

      	t.timestamps
    end
  end
end
