# Create a class and inherit from ActiveRecord::Migration
class CreateCostumes < ActiveRecord::Migration[4.2]
    def change
        create_table :costumes do |t|
            t.string :name
            t.float :price #float over integer to account for cents instead of just dollars
            t.string :size #small, medium or large etc
            t.string :image_url
            t.datetime :created_at
            t.datetime :updated_at
        end
    end
    
end
# By convention, the class name should match the part of the
# file name after the number, so in this case:
# 002_create_costumes.rb becomes class CreateCostumes

# Define a change method in which to do the migration
# In this change method, create columns with the correct names and 
# value types according to the spec