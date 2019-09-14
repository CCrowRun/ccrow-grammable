class GramsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index

  end

  def new
    @gram = Gram.new
  end

  def create
    @gram = current_user.grams.create(gram_params)
    # # return head(:unprocessable_entity) if @gram.invalid?
    # redirect_to root_path
    if @gram.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
   @gram = Gram.find_by_id(params[:id])
   if @gram.blank?
    render :file => "#{Rails.root}/public/404.html",  layout: false, status: :not_found
   end
  end

  private

  def gram_params
    params.require(:gram).permit(:message)
  end
end
