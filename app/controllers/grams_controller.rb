class GramsController < ApplicationController
  def index

  end

  def new
    @gram = Gram.new
  end

  def create
    @gram = Gram.create(gram_params)
    return head(:unprocessable_entity) if @gram.invalid?
    redirect_to root_path
  end

  private

  def gram_params
    params.require(:gram).permit(:message)
  end
end
