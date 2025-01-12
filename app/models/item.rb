class Item < ApplicationRecord
  belongs_to :todo_list

 validates_presence_of :title
end
