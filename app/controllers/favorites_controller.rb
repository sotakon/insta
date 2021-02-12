class FavoritesController < ApplicationController
  def create
    user = current_user
    picture = Picture.find(params[:picture_id])
    if Favorite.create(user_id:user.id,picture_id:picture.id)
      redirect_to pictures_path
    else
      redirect_to root_url
    end
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
      redirect_to pictures_path
    end
  end
