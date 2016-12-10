class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :regalos

  mount_uploader :img_contact, ImgContactUploader

  attr_accessor :invite_code
  validate :invite_code_valid, :on => :create
  validates_processing_of :img_contact
  validate :image_size_validation

  private

  def invite_code_valid
    unless self.invite_code == "pipecami2502"
      self.errors.add(:invite_code, "Código inválido. Intenta nuevamente o contactate con felipe.fabiop@gmail.com")
    end
  end

  def image_size_validation
    errors[:img_contact] << "should be less than 800KB" if img_contact.size > 0.8.megabytes
  end

end
