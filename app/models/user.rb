class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  validates :email,       presence:   true
  validates :password, presence:   true
  validates :password_confirmation,       presence:   true

  rails_admin do
    configure :email do
      label 'Email'
    end
      
    configure :reset_password_sent_at do
      label 'Recuperação de senha enviada em:'
    end
      
    configure :remember_created_at do
      label 'Criado em:'
    end
      
    configure :updated_at do
      label 'Atualizado em:'
    end
  end
end
