class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :chat_messages
  has_many :chat_room_users

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum sex: { 男: 0, 女: 1 }

  mount_uploader :img_name, ImgNameUploader

  validates :img_name, presence: true
end
