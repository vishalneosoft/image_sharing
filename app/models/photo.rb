class Photo < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  belongs_to :album

  scope :last_few_records, -> (num) { order(id: :desc).limit(num) }

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates_presence_of :tagline, :owner_id, :album_id
end
