class User < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  has_many :endorsements
  has_many :user_skills
  has_many :questions
  has_many :skills, through: :user_skills
  has_many :conversations, :foreign_key => :sender_id

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable

  after_create :create_default_conversation

  private

  # for demo purposes

  def create_default_conversation
    Conversation.create(sender_id: 1, recipient_id: self.id) unless self.id == 1
  end
end
