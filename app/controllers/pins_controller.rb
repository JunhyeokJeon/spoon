class PinsController < ApplicationController
  before_action :find_pin, only: [:show, :edit, :update, :destroy]

  # Read
  def index
    @pins = Pin.all.order('created_at DESC')
  end
  def show

  end

  def new
    @pin = current_user.pins.build
  end

  # Create
  def create
    @pin = current_user.pins.build(pin_params)

    if @pin.save
      redirect_to @pin, notice: "Successfully created new Pin"
    else
      render 'new'
    end
  end

  # Update
  def edit
  end

  def update
    if @pin.update(pin_params)
      redirect_to @pin, notice: "Pin was Successfully updated!"
    else
      render 'edit'
    end
  end

  # Destroy
  def destroy
      @pin.destroy

      redirect_to root_path, notice: "Pin was Successfully deleted"
  end


  private

  def pin_params
    params.require(:pin).permit(:title, :description)
  end

  def find_pin
    @pin = Pin.find(params[:id])
  end

end