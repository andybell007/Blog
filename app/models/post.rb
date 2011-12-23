class Post < ActiveRecord::Base
validates_presence_of :name, :message => "- Write your name dickhead"
validates :title, :presence=>true
end
