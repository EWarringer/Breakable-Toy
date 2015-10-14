class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_many :endorsements
  has_many :user_skills
  has_many :questions
  has_many :skills, through: :user_skills
  has_many :conversations, foreign_key: :sender_id

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable,
         :rememberable,             :trackable,   :validatable,
         :omniauthable
end
