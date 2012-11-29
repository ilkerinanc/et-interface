class Node < ActiveRecord::Base
  attr_accessible :amount, :author_id, :category_id, :extra, :in_reply_to_tid, :latitude, :location, :longitude, :permalink, :posted_at, :tid, :value, :what
end
