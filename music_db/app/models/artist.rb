class Artist < ActiveRecord::Base
  belongs_to :genre
  has_many :songs

  validates :name, uniqueness: true, length: {minimum: 2}
  validates :genre_id, :name, presence: true
end

# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string
#  genre_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_artists_on_genre_id  (genre_id)
#
