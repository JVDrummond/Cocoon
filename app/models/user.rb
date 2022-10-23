class User < ApplicationRecord
  has_many :experiences, inverse_of: :user, dependent: :destroy
  #dependet: :destroy serve para autorizarmos a exclusão do experiences ao deletarmos o User.

  accepts_nested_attributes_for :experiences, reject_if: :all_blank, allow_destroy: true
end