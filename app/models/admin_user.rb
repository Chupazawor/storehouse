class AdminUser < User
  validates :first_name, :last_name, presence: true, length: { in: 3..20 }
  validates :email, length: { maximum: 50 }, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable
end
