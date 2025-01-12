class TodoList < ApplicationRecord
    has_many :items, dependent: :destroy
    belongs_to :user

    scope :by_user, lambda {|user|
        where(:user_id => user.id)
    }

   validates_presence_of :title
end
