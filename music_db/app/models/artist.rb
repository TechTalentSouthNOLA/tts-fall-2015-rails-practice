class Artist < ActiveRecord::Base
  belongs_to :genre
  has_many :songs

  validates :name, uniqueness: true, length: {minimum: 2}
  validates :genre_id, :name, presence: true

  # Now you can call Artist.recent or Artist.recent(30)
  scope :recent, -> (minutes_past = 60) { where("created_at > ?", minutes_past.minutes.ago) }

  # Now you can call Artist.today
  scope :today, -> { where('DATE(created_at) = ?', Date.today) }
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
