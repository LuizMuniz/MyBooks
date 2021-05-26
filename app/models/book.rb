# - MODEL DE BOOKS
# - Não pode ser criado um registro de book sem os atributos :title, :description e :image

class Book < ApplicationRecord
  #validations
  validates :title,       presence:   true
  validates :description, presence:   true
  validates :image,       presence:   true

  has_one_attached :image


  rails_admin do
    configure :title do
      label 'Título'
    end

    configure :description do
      label 'Descrição'
    end

    configure :created_at do
      label 'Criado em:'
    end

    configure :updated_at do
      label 'Atualizado em:'
    end

    configure :image do
      label 'Capa'
    end
  end
end
