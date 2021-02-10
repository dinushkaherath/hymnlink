class Song < ApplicationRecord
    has_many :renditions, dependent: :destroy
end
