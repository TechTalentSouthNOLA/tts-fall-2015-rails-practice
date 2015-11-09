class Owner < ActiveRecord::Base
  has_many :dogs

  validates :name, :phone, presence: true
end

    # t.string   "name"
    # t.string   "phone"
