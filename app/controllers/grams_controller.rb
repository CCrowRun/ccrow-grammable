class GramsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :load_gram, only: [:show, :edit, :update, :destroy]
  before_action :render_not_found, only: [:show, :edit, :update, :destroy], if: -> { @gram.blank? }
  before_action :render_forbidden, only: [:edit, :update, :destroy], if: -> { @gram.user != current_user }

  def index
    @grams = Gram.all
  end

  def new
    @gram = Gram.new
  end

  def create
    @gram = current_user.grams.create(gram_params)
    if @gram.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    @gram.update_attributes(gram_params)
    if @gram.valid?
      redirect_to root_path
    else
      return render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @gram.destroy
    redirect_to root_path
  end

private
  def load_gram
    @gram = Gram.find_by_id(params[:id])
  end

  def gram_params
    params.require(:gram).permit(:message, :picture)
  end
end