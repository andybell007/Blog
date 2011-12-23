class Post < ActiveRecord::Base
 
validates_presence_of :name, :message => "- Write your name dickhead"
  validates_presence_of :title, :message => "- Write a title you cunt"
  has_many :comments, :dependent => :destroy
  has_many :tags
 
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
