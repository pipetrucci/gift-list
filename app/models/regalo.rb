class Regalo < ActiveRecord::Base

  belongs_to :user
  mount_uploader :img_product, ImageProductUploader

  validates_processing_of :img_product
  validate :image_size_validation

  private
  def image_size_validation
    errors[:img_product] << "should be less than 800KB" if img_product.size > 0.8.megabytes
  end
end
