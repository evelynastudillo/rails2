class Completedtask < ApplicationRecord
  belongs_to :user
  belongs_to :todo
end
