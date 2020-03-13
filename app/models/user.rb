class User < ApplicationRecord
  validates :username, presence: true,
                       length: {minimum: 4, maximum: 15},
                       uniqueness: {case_sensitive: false}
has_many :messages
has_secure_password
has_secure_password :recovery_password, validations: false

end
