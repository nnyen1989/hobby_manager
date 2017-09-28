class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def edit
    @actor = Actor.find(params[:id])
  end

  def create
    @actor = Actor.new(actor_params)
    if @actor.valid?
      @actor.save
      redirect_to actors_path
    else
      render 'new'
    end
  end

  def new
    @actor = Actor.new
  end

  def update
    @actor = Actor.find(params[:id])
    if @actor.update(actor_params)
      redirect_to actors_path
    else
      render 'edit'
    end
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    redirect_to actors_path
  end

  private

  def actor_params
    params.require(:actor).permit(:name_actor, :birth_day, :country, :avatar)
  end

end
