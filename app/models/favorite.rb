class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :diary
<<<<<<< HEAD
<<<<<<< Updated upstream
=======

>>>>>>> Stashed changes
=======
>>>>>>> 6688c3eea5a269900823cc85f453671ffb98ae74
  validates_uniqueness_of :diary_id, scope: :user_id
end
