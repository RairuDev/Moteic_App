class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  enum gender: {man: 0, woman: 1}
  enum body_shape: {'細め': 0, 'やや細め': 1, '普通': 2, 'ぽっちゃり': 3, '筋肉質': 4}
  enum age: {'18~24': 0, '25~29': 1, '30~34': 2, '35~39': 3, '40~': 4}
end
