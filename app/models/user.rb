class User < ApplicationRecord
  has_secure_password
  
  validates :email, presence: true, uniqueness: true, 
    format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { minimum: 6 }, if: :password_required?
  
  private
  
  def password_required?
    !persisted? || password.present?
  end
end 