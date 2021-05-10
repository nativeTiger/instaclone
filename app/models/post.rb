class Post < ApplicationRecord
  default_scope { order created_at: :desc }
  belongs_to :account
  mount_uploader :image, ImageUploader
  before_create :set_active
  has_many :likes

  scope :active, -> { where(:active => true)}
  def total_likes
    0
  end

  private
  def set_active
    self.active = true
  end
end
 