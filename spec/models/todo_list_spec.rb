require 'rails_helper'

RSpec.describe TodoList, type: :model do
    it { should have_many(:items) }
    it { should belong_to(:user) }

    it { should validate_presence_of(:title) }
end
