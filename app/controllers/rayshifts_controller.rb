class RayshiftsController < ApplicationController
  before_action :set_rayshift, only: [:show, :edit, :update, :destroy]

  # GET /rayshifts
  # GET /rayshifts.json
  def index
    @rayshifts = Rayshift.all
  end

  # GET /rayshifts/1
  # GET /rayshifts/1.json
  def show
  end

  # GET /rayshifts/new
  def new
    @rayshift = Rayshift.new
  end

  # GET /rayshifts/1/edit
  def edit
  end

  # POST /rayshifts
  # POST /rayshifts.json
  def create
    @rayshift = Rayshift.new(rayshift_params)

    respond_to do |format|
      if @rayshift.save
        format.html { redirect_to @rayshift, notice: 'Rayshift was successfully created.' }
        format.json { render :show, status: :created, location: @rayshift }
      else
        format.html { render :new }
        format.json { render json: @rayshift.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rayshifts/1
  # PATCH/PUT /rayshifts/1.json
  def update
    respond_to do |format|
      if @rayshift.update(rayshift_params)
        format.html { redirect_to @rayshift, notice: 'Rayshift was successfully updated.' }
        format.json { render :show, status: :ok, location: @rayshift }
      else
        format.html { render :edit }
        format.json { render json: @rayshift.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rayshifts/1
  # DELETE /rayshifts/1.json
  def destroy
    @rayshift.destroy
    respond_to do |format|
      format.html { redirect_to rayshifts_url, notice: 'Rayshift was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rayshift
      @rayshift = Rayshift.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rayshift_params
      params.require(:rayshift).permit(:post)
    end
end
