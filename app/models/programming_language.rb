class ProgrammingLanguage < ApplicationRecord
  validates :title, presence: true, uniqueness: true
    validates :description, presence: true
  # validates :link, presence: true, url: true
end
