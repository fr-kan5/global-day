require 'rails_helper'

RSpec.describe Post, type: :model do
  describe '投稿する'
  before do
    @post = FactoryBot.build(:post)
  end

  it '全ての情報が存在していれば保存できる' do
    expect(@post).to be_valid
  end
  it 'titleが空では保存できない' do
    @post.title = nil
    @post.valid?
    expect(@post.errors.full_messages).to include("Title can't be blank")
  end
  it 'placeが空では保存できない' do
    @post.place = nil
    @post.valid?
    expect(@post.errors.full_messages).to include("Place can't be blank")
  end
  it 'textが空では保存できない' do
    @post.text = nil
    @post.valid?
    expect(@post.errors.full_messages).to include("Text can't be blank")
  end
  it 'imageが空では保存できない' do
    @post.image = nil
    @post.valid?
    expect(@post.errors.full_messages).to include("Image can't be blank")
  end
  it '紐付くユーザーが空では保存できない' do
    @post.user = nil
    @post.valid?
    expect(@post.errors.full_messages).to include('User must exist')
  end
end
