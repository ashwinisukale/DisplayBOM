class ContentDisplaysController < ApplicationController
  before_action :set_content_display, only: [:show, :update, :destroy]

  # GET /content_displays
  def index
    @content_displays = ContentDisplay.all

    render json: @content_displays
  end

  # GET /content_displays/1
  def show
    render json: @content_display
  end

  # POST /content_displays
  def create
    @content_display = ContentDisplay.new(content_display_params)

    if @content_display.save
      render json: @content_display, status: :created, location: @content_display
    else
      render json: @content_display.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /content_displays/1
  def update
    if @content_display.update(content_display_params)
      render json: @content_display
    else
      render json: @content_display.errors, status: :unprocessable_entity
    end
  end

  # DELETE /content_displays/1
  def destroy
    @content_display.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_display
      @content_display = ContentDisplay.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def content_display_params
      params.require(:content_display).permit(:star_item_id, :station_id, :level, :part_code, :description)
    end
end
