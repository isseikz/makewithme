class IdeasController < ApplicationController
  def index
    ideas = Idea.all
    @new_ideas = ideas.order("created_at DESC")
    @idea = Idea.new
  end

  def create
    if user_signed_in?
      @idea = Idea.new(idea_params)
      if @idea.save
        flash.now[:notice] = "投稿完了！"
        redirect_to :action => 'index'
      else
        flash.now[:error] = "予期せぬ理由で投稿に失敗しました。"
      end
    else
      redirect_to new_user_registration_path
    end

  end

  def destroy
  end
  private
  def idea_params
    params.require(:idea).permit(:title_list).merge(user_id: current_user.id)
  end
end
