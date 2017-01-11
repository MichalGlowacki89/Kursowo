class KursiesController < ApplicationController
  layout 'admin'
  before_action :set_kursy, only: [:show, :edit, :update, :destroy]

  # GET /kursies
  # GET /kursies.json
  def index
    @kursies = Kursy.all
  end

  # GET /kursies/1
  # GET /kursies/1.json
  def show
  end

  # GET /kursies/new
  def new
    @kursy = Kursy.new
  end

  # GET /kursies/1/edit
  def edit
  end

  # POST /kursies
  # POST /kursies.json
  def create
    @kursy = Kursy.new(kursy_params)

    respond_to do |format|
      if @kursy.save
        format.html { redirect_to @kursy, notice: 'Kursy was successfully created.' }
        format.json { render :show, status: :created, location: @kursy }
      else
        format.html { render :new }
        format.json { render json: @kursy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kursies/1
  # PATCH/PUT /kursies/1.json
  def update
    respond_to do |format|
      if @kursy.update(kursy_params)
        format.html { redirect_to @kursy, notice: 'Kursy was successfully updated.' }
        format.json { render :show, status: :ok, location: @kursy }
      else
        format.html { render :edit }
        format.json { render json: @kursy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kursies/1
  # DELETE /kursies/1.json
  def destroy
    @kursy.destroy
    respond_to do |format|
      format.html { redirect_to kursies_url, notice: 'Kursy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kursy
      @kursy = Kursy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kursy_params
      params.require(:kursy).permit(:nazwa, :cena_w_zl)
    end
end
