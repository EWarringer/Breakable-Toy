class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :name, presence: true
  has_many :endorsements
  has_many :user_skills
  has_many :questions
  has_many :skills, through: :user_skills
  has_many :conversations, foreign_key: :sender_id

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable,
    :trackable, :validatable,
    :omniauthable, :omniauth_providers => [:linkedin]

  def self.find_for_oauth(auth)
    find_or_create_by(email: auth.info.email) do |user|
      #everything that a user must have
      user.email = auth.info.email
      user.name = auth.info.name
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.password = Devise.friendly_token[0,20]
      user.photo = auth.info.image
      user.industry = auth.info.industry
      user.description = auth.info.description
      user.location = auth.info.location
      user.linkedin_profile = auth.info.urls.public_profile
    end
  end

  def update_from_omniauth(auth)
    self.email = auth.info.email
    self.name = auth.info.name
    self.first_name = auth.info.first_name
    self.last_name = auth.info.last_name
    self.photo = auth.info.image
    self.industry = auth.info.industry
    self.description = auth.info.description
    self.location = auth.info.location
    self.save
  end
end
