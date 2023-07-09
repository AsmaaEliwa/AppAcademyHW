class Person < ApplicationRecord
    validates :name, presence: true

    belongs_to :houses,
    primary_key: :id ,
    foreign_key: :person_id,
    class_name:'House'
  end