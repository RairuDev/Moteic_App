class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  enum gender: {man: 0, woman: 1}
  enum body_shape: {'細め': 0, 'やや細め': 1, '普通': 2, 'ぽっちゃり': 3, '筋肉質': 4}
  enum age: {'18~24': 0, '25~29': 1, '30~34': 2, '35~39': 3, '40~': 4}
  enum job: {'IT-engineer': 0, 'IT-relation': 1, 'Web-relation': 2, 'others': 3}
  enum income: {'~300': 0, '300~500':1, '500~700':2, '700~1000':3, '1000~2000':4, '2000~':5}

  # validates :content, {presence: true, length : {maximum:6}}
end