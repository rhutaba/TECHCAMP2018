class TopController < ReviewController

  def index
    @products = Product.all.order('updated_at DESC').limit(20)
  end

  def search
    # productsテーブルからキーワードで検索した作品データを20件取り出し、@products変数に入れる処理を書いて下さい
    keyword = params[:keyword]
    @products = Product.where('title LIKE(?)', "%#{keyword}%").limit(20)
  end

  private
  def search_params
    params.permit(:keyword)
  end
end
