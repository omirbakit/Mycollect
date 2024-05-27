class CollectionsController < ApplicationController
  # before_action :logged_in_user, only: [:create, :destroy]
  def new
    @collection = Collection.new(collection_params.merge(user: current_user))
  end

  # def create
  #   @collection = current_user.collections.build(collection_params)
  #   if @collection.save
  #     flash[:success] = "Collection created!"
  #     redirect_to root_path
  #   end
  # end

  # def destroy
  # end

  # private

  # def collection_params
  #   params.require(:collection).permit(:content)
  # end

  def create
    @collection = Collection.new(collection_params.merge(user: current_user))

    if @collection.save
      redirect_to root_path
    end
  end

  def index
    @collections = Collection.all
  end

  private

  def collection_params
    params.require(:collection).permit(:name, :description, :category)
  end
end