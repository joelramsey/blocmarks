class Bookmark < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  has_many :likes, dependent: :destroy
  before_save :normalize_url
  has_many :likes, dependent: :destroy

private 

  def normalize_url
    self.url = 'http://' + url unless (url.empty? || url.match(/^https?:\/\//))
    self.url = 'http://www.' + url unless (url.empty? || url.match(/www/))
  end  
end