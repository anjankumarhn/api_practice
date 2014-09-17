class CreateTeachers < ActiveRecord::Migration
def change
create_table :teachers do |t|
t.string :name, limit: 255
t.references :school

t.timestamps
end
add_index :teachers, :school_id
end
end