class CreateTeachers < ActiveRecord::Migration
def change
create_table :teachers do |t|
t.string :name, limit: 255
t.integer :school_id

t.timestamps
end
end
end