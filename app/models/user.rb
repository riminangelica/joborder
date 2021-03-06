class User < ActiveRecord::Base
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :timeoutable, :confirmable, :token_authenticatable,
         :omniauthable, :omniauth_providers => [:twitter, :facebook, :github]

  has_many :projects
  has_many :orders
  belongs_to :category

  mount_uploader :image, ImageUploader

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :username, :confirmed_at,
                  :year, :course, :school, :organization, :category_id, :first_name, :middle_initial, :surname,
                  :image, :remote_image_url, :image_cache
  # attr_accessible :title, :body

  validates_presence_of :username
  validates_uniqueness_of :username

  def self.from_omniauth(auth)
  	where(auth.slice(:provider, :uid)).first_or_create do |user|
  		user.provider = auth.provider
  		user.uid = auth.uid
  		user.username = auth.info.nickname
      user.email = auth.info.email
      user.first_name = auth.info.first_name
      user.surname = auth.info.last_name
      user.image = auth.info.image :confirmable => false
  	end
  end

  def self.new_with_session(params, session)
  	if session["devise.user_attributes"]
  		new(session["devise.user_attributes"], without_protection: true) do |user|
  			user.attributes = params
  			user.valid?
  		end
  	else
  		super
  	end
  end

  def password_required?
  	super && provider.blank?
  end

  def update_with_password(params, *options)
  if encrypted_password.blank?
    update_attributes(params, *options)
  else
    super
  end
end


serialize :meta, Hash

  # def image_will_change!
  #         meta_will_change!
  #             @image_changed = true
  #               end

    def image_changed?
            @image_changed
              end

end
