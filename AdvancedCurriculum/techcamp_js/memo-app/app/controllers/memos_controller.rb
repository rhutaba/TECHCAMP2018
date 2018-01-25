class MemosController < ApplicationController
  def index
    @memos = Memo.all
    @memo = Memo.new
  end

  def create
    Memo.create(memo_params)
    redirect_to :root
  end

  private

  def memo_params
    params.require(:memo).permit(:text)
  end
end
