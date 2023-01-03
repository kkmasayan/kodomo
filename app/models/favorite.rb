class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :diary
<<<<<<< Updated upstream
=======

>>>>>>> Stashed changes
  validates_uniqueness_of :diary_id, scope: :user_id
end
