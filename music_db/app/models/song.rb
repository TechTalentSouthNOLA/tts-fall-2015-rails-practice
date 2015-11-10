class Song < ActiveRecord::Base
  belongs_to :artist

  validates :title, :artist_id, :year, presence: true
  validates :title, length: {minimum: 2}

  validates_uniqueness_of :title, :scope => :artist_id
end

# Scope example
# class Article < ActiveRecord::Base
#   scope :published, -> { where(published: true) }
# end

# # Acceptance
# class Person <ActiveRecord::Base
#   validates :terms_of_service, acceptance: true
# end

# # Conditionals
# class Order < ActiveRecord::Base
#   validates :card_number, presence: true, if: :paid_with_card?

#   def paid_with_card?
#     payment_type == "card"
#   end
# end

# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  title      :string
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  year       :integer
#  rating     :integer
#
# Indexes
#
#  index_songs_on_artist_id  (artist_id)
#
