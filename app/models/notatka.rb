class Notatka < ApplicationRecord
    belongs_to :user, optional: true
end
