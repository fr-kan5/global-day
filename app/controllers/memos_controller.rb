class MemosController < ApplicationController
  before_action :authenticate_user!

  def index 
    @memos = Memo.all.where(user_id: current_user)
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(params_memo)
    if @memo.save
      ActionCable.server.broadcast 'memo_channel', content: @memo
    end

  end

  private
  def params_memo
    params.require(:memo).permit(:title, :content).merge(user_id: current_user.id)
  end
end
