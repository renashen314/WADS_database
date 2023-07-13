class User < ApplicationRecord
  rolify
  has_one :developer
  after_create :create_dev
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  private
  def create_dev
    first = (LdapLookup.get_simple_name(self.email.split("@").first)).split.first
    last = (LdapLookup.get_simple_name(self.email.split("@").first)).split.second
    uniq = self.email.split("@").first
    self.create_developer(user_id: self.id, first_name: first, last_name: last, uniqname: uniq)
  end
end
