class LikesController < ApplicationController
  
  def create
    @bookmark = Bookmark.find(params[:bookmark_id])
    like = current_user.likes.build(bookmark_id: @bookmark.id)
    
    authorize like
    if like.save
      redirect_to request.referrer
    else
      flash[:error] = "Sorry mate, but something went wrong."
      redirect_to request.referrer
    end
  end
  
  def destroy
    @bookmark = Bookmark.find(params[:bookmark_id])
    like = current_user.liked(@bookmark)
    
    authorize like
    if like.destroy
      redirect_to request.referrer
    else
      flash[:error] = "Sorry mate, but something went wrong."
      redirect_to request.referrer
    end
  end
  
  
  
  
  
end