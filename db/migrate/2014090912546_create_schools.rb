class CreateSchools < ActiveRecord::Migration
def change
create_table :schools do |t|
t.string :name, limit: 255
t.string :phone, limit: 30
t.string :address, limit: 512
t.text :description
t.string :status, limit: 55

t.timestamps
end
end
end