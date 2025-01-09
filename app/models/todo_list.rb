class TodoList < ApplicationRecord
    has_many :itens
    belongs_to :user

    scope :by_user, lambda {|user|
        where(:user_id => user.id)
    }
end
