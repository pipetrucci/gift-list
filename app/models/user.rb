class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :regalos

  mount_uploader :img_contact, ImgContactUploader

  attr_accessor :skip_password_validation
  attr_accessor :invite_code
  validate :invite_code_valid, :on => :create
  validates_processing_of :img_contact
  validate :image_size_validation

  private

  def password_required?
    return false if skip_password_validation
    super
  end

  def invite_code_valid

    if self.invite_code.casecmp("pipecami2502") != 0
      self.errors.add(:invite_code, "inválido. Intenta nuevamente o escríbeme a felipe.fabiop@gmail.com")
    end
  end

  def image_size_validation
    errors[:img_contact] << "should be less than 800KB" if img_contact.size > 0.8.megabytes
  end

end
