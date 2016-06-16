class TreesController < ApplicationController

  def index
    @trees = Tree.all
  end

  def show
    @tree = Tree.find(params[:id])
  end

  def new
    @tree = Tree.new
  end

  def create
    @tree = Tree.new(tree_params)
    if @tree.save
      redirect_to trees_path
    else
      render :new
    end
  end

  def edit

  end

  private
  def tree_params
      params.require(:trees).permit(:treetype, :height, :url)
  end

end
