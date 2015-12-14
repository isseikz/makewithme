class IdeasController < ApplicationController
  def index
    ideas = Idea.all
    @new_ideas = ideas.order("created_at DESC")
    # @fav_ideas =
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params)
    if @idea.save
      flash.now[:notice] = "投稿完了！"
      redirect_to :action => 'index'
    else
      flash.now[:error] = "予期せぬ理由で投稿に失敗しました。"
    end
  end

  def destroy
  end
  def idea_params
    params.require(:idea).permit(:title)
  end
end
