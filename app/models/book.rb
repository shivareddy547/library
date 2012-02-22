class Book < ActiveRecord::Base
has_many :reviews
belongs_to :subject


def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end


end
