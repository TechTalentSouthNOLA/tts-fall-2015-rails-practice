class Dog < ActiveRecord::Base
  belongs_to :owner

  validates :name, :breed, :age, :owner_id, presence: true
end


   # t.string   "name"
   #  t.string   "breed"
   #  t.integer  "age"
   #  t.datetime "created_at", null: false
   #  t.datetime "updated_at", null: false
   #  t.integer  "owner_id"