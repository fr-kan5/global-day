require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'コメントする'
  before do
    @comment = FactoryBot.build(:comment)
  end

  it 'text,user,postが存在する場合保存できる' do
    expect(@comment).to be_valid
  end
  it 'textが空の場合保存できない' do
    @comment.text = nil
    @comment.valid?
    expect(@comment.errors.full_messages).to include("Text can't be blank")
  end
  it '紐付くuserが空では保存できない' do
    @comment.user = nil
    @comment.valid?
    expect(@comment.errors.full_messages).to include('User must exist')
  end
  it '紐づくpostが空では保存できない' do
    @comment.post = nil
    @comment.valid?
    expect(@comment.errors.full_messages).to include('Post must exist')
  end
end
