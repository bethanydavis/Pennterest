# Controller for Pins
class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]

  # GET /pins
  # GET /pins.json
  def index
    @pins = Pin.all.order('created_at DESC')
    @pins = Pin.search_by_category(params[:search]) if params[:search]
  end

  # GET /pins/1
  # GET /pins/1.json
  def show
  end

  # GET /pins/new
  def new
    @pin = Pin.new
  end

  # GET /pins/1/edit
  def edit
  end

  # POST /pins
  # POST /pins.json
  def create
    @pin = Pin.new(pin_params)

    respond_to do |format|
      if @pin.save
        format.html do
          redirect_to @pin, notice:
          'Pin was successfully created.'
        end
        format.json { render :show, status: :created, location: @pin }
      else
        format.html { render :new }
        format.json { render json: @pin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pins/1
  # PATCH/PUT /pins/1.json
  def update
    respond_to do |format|
      board_to_add = params[:pin][:board_ids].second
      @pin.boards << Board.find(board_to_add)
      # if @pin.update(pin_params)

      format.html do
        redirect_to @pin, notice:
        'Pin was successfully updated.'
      end
      format.json { render :show, status: :ok, location: @pin }
      # else
      #   format.html { render :edit }
      # format.json { render json: @pin.errors, status: :unprocessable_entity }
      # end
    end
  end

  # DELETE /pins/1
  # DELETE /pins/1.json
  def destroy
    @pin.destroy
    respond_to do |format|
      format.html do
        redirect_to pins_url, notice:
        'Pin was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pin
    @pin = Pin.find(params[:id])
  end

  # Never trust parameters from the scary internet,
  # only allow the white list through.
  def pin_params
    pinparams = params.require(:pin).permit(:category, :caption, :source,
                                            :image, board_ids: [])
    pinparams
  end
end
