class Song < ApplicationRecord
  belongs_to :album, class_name: 'Album', foreign_key: 'album_id'
end
