class Bookmark < ActiveRecord::Base
  belongs_to :user

  # ensures that a user_id is present
  validates :user_id, presence: true

  # ensure that title is present and at least 10 chars long
  validates :title, length: { minimum: 10 }, presence: true

  # ensure url is present and in proper format
  validates :url, format: { with: Regexp.new(URI::regexp(%w(http https))) }, presence: true
end
