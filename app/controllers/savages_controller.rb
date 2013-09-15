class SavagesController < ApplicationController
  before_action :set_savage, only: [:show, :edit, :update, :destroy]

  # GET /savages
  # GET /savages.json
  def index
    @savages = Savage.all
  end

  # GET /savages/1
  # GET /savages/1.json
  def show
  end

  # GET /savages/new
  def new
    @savage = Savage.new
  end

  # GET /savages/1/edit
  def edit
  end

  # POST /savages
  # POST /savages.json
  def create
    @savage = Savage.new(savage_params)

    respond_to do |format|
      if @savage.save
        format.html { redirect_to @savage, notice: 'Savage was successfully created.' }
        format.json { render action: 'show', status: :created, location: @savage }
      else
        format.html { render action: 'new' }
        format.json { render json: @savage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /savages/1
  # PATCH/PUT /savages/1.json
  def update
    respond_to do |format|
      if @savage.update(savage_params)
        format.html { redirect_to @savage, notice: 'Savage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @savage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /savages/1
  # DELETE /savages/1.json
  def destroy
    @savage.destroy
    respond_to do |format|
      format.html { redirect_to savages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_savage
      @savage = Savage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def savage_params
      params.require(:savage).permit(:name)
    end
end
