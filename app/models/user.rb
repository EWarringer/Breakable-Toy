class User < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  has_many :endorsements
  has_many :user_skills
  has_many :questions
  has_many :skills, through: :user_skills

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
