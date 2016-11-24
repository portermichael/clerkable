class User < ActiveRecord::Base
  attr_accessor :remember_token
	has_many :departments, dependent: :destroy
	has_many :products, dependent: :destroy
  has_many :relationships

  has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id"
  has_many :following, through: :active_relationships, source: :follower_id
  has_many :passive_relationships, class_name: "Relationship", foreign_key: "followed_id"
  has_many :followers, through: :passive_relationships, source: :follower



  before_save { self.email = email.downcase }
  validates :user_name, presence: true, length: { in: 5..50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { in: 8..255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
    # Returns the hash digest of the given string. Used for testing
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # Returns a random token.
  def User.new_token
    SecureRandom.urlsafe_base64
  end
end
