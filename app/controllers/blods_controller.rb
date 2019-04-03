class BlodsController < ApplicationController
  before_action :set_blod, only: [:show, :edit, :update, :destroy]

  # GET /blods
  # GET /blods.json
  def index
    @blods = Blod.all
  end

  # GET /blods/1
  # GET /blods/1.json
  def show
  end

  # GET /blods/new
  def new
    @blod = Blod.new
  end

  # GET /blods/1/edit
  def edit
  end

  # POST /blods
  # POST /blods.json
  def create
    @blod = Blod.new(blod_params)

    respond_to do |format|
      if @blod.save
        format.html { redirect_to @blod, notice: 'Blod was successfully created.' }
        format.json { render :show, status: :created, location: @blod }
      else
        format.html { render :new }
        format.json { render json: @blod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blods/1
  # PATCH/PUT /blods/1.json
  def update
    respond_to do |format|
      if @blod.update(blod_params)
        format.html { redirect_to @blod, notice: 'Blod was successfully updated.' }
        format.json { render :show, status: :ok, location: @blod }
      else
        format.html { render :edit }
        format.json { render json: @blod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blods/1
  # DELETE /blods/1.json
  def destroy
    @blod.destroy
    respond_to do |format|
      format.html { redirect_to blods_url, notice: 'Blod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blod
      @blod = Blod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blod_params
      params.require(:blod).permit(:title, :body)
    end
end
