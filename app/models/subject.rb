class Subject < ActiveRecord::Base

has_many :books
has_many :employees
end
