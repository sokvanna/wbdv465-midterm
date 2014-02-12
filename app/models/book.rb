class Book < ActiveRecord::Base
 validates :title, :author, :summary, presence: true
 validates :isbn, length: { minimum: 10 }
 attr_accessible :context, :name, :tag_list
 acts_as_taggable
end
