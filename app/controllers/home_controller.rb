class HomeController < ApplicationController
  def index
    @idea = Idea.new
    @idea_box = Idea.last(4)
    
  end
  def create
    @idea = Idea.new(idea_params)
    if @idea.save
      redirect_to root_path
    else
      render 'an error has occured'
    end
  end
  def idea_params
    params.require(:idea).permit(:title, :area)
  end
end
