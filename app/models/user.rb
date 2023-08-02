class User < ApplicationRecord
  rolify
  has_one :developer, dependent: :destroy
  after_create :create_dev
  validate :check_mcommunity_group
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         def self.ransackable_associations(auth_object = nil)
          ["developer", "roles"]
        end
        def self.ransackable_attributes(auth_object = nil)
          ["created_at", "email", "encrypted_password", "id", "remember_created_at", "reset_password_sent_at", "reset_password_token", "updated_at"]
        end

  private
  def check_mcommunity_group
    uniq = self.email.split("@").first
    errors.add(:email, "must be in W&ADS") unless LdapLookup.is_member_of_group?(uniq, "LSA TS Web and Application Development Services
      ")
  end
  def create_dev
    first = (LdapLookup.get_simple_name(self.email.split("@").first)).split.first
    last = (LdapLookup.get_simple_name(self.email.split("@").first)).split.second
    uniq = self.email.split("@").first
    self.create_developer(user_id: self.id, first_name: first, last_name: last, uniqname: uniq)
  end
end
