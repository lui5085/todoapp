require 'rails_helper'

RSpec.describe Item, type: :model do
    it { should belong_to(:todo_list) }
    it { should validate_presence_of(:title) }
end
