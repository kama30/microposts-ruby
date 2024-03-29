class FavoritesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favorite(micropost)
    flash[:success] = 'お気に入りに登録しました。'
    # redirect_to likes_user_url(current_user)
    redirect_back(fallback_location: root_url)
  end
  
  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:success] = 'お気に入りを解除しました。'
    # redirect_to likes_user_url(current_user)
    redirect_back(fallback_location: root_url)
  end
end
