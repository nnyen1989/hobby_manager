class Movie < ApplicationRecord
  belongs_to :actor
  mount_uploaders :covers, CoversUploader
  serialize :covers, JSON
end
