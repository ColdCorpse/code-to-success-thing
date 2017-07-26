class User <ApplicationRecord
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  
  
    before_create :configure_permitted_parameters, if: :devise_controller?
  
  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  devise_parameter_sanitizer.permit(:account_update,keys: [:name])
  end


  validates_presence_of :name
  
  def first_name 
    self.name.split.first
  end
  def last_name 
      self.name.split.last
  end
end