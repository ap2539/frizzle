class Question < ApplicationRecord
  after_create_commit { QuestionBroadcastJob.perform_later self }
end
