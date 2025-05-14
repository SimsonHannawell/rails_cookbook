class BookmarksController < ApplicationController

  def new
    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.category_id = params[:category_id]
    if @bookmark.save
      redirect_to category_path(@bookmark.category)
    else
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to category_path(@bookmark.category)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :recipe_id)
  end

end
