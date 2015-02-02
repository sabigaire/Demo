class NewsController < ApplicationController
  def index
    @news=News.all
  end
   def show
     @news = News.find(params[:id])
   end
  def new
    @news=News.new
    @tags=Tag.all
  end
  def create

    @news = News.new(news_params)
    respond_to do |format|
      if  @news.save
        format.html { redirect_to  news_index_path }
      else
        format.html { redirect_to new_news_path }
      end
    end
  end

  private
  def news_params
    params.require(:news).permit(:title, :content,:tags)
  end
end
