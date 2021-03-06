class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :account

  after_create :create_account

  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(:provider => access_token.provider, :uid => access_token.uid ).first
    if user
      return user
    else
      registered_user = User.where(:email => access_token.info.email).first
      if registered_user
        return registered_user
      else
        account = Account.create(first_name: data['first_name'],
                                 last_name: data['last_name'])

        user = User.create(provider: access_token.provider,
                           email: data["email"],
                           uid: access_token.uid ,
                           password: Devise.friendly_token[0,20],
                           account: account
        )
      end
    end
  end

  def create_account
    if self.account.nil?
      account = Account.create!
      update_attribute(:account, account)
    end
  end
end
