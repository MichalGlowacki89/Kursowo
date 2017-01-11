class KursyZamowieniesController < ApplicationController
  layout 'admin'
  before_action :set_kursy_zamowieny, only: [:show, :edit, :update, :destroy]

  # GET /kursy_zamowienies
  # GET /kursy_zamowienies.json
  def index
    @kursy_zamowienies = KursyZamowienie.all
  end

  # GET /kursy_zamowienies/1
  # GET /kursy_zamowienies/1.json
  def show
  end

  # GET /kursy_zamowienies/new
  def new
    @kursy_zamowieny = KursyZamowienie.new
  end

  # GET /kursy_zamowienies/1/edit
  def edit
  end

  # POST /kursy_zamowienies
  # POST /kursy_zamowienies.json
  def create
    @kursy_zamowieny = KursyZamowienie.new(kursy_zamowieny_params)

    respond_to do |format|
      if @kursy_zamowieny.save
        format.html { redirect_to @kursy_zamowieny, notice: 'Kursy zamowienie was successfully created.' }
        format.json { render :show, status: :created, location: @kursy_zamowieny }
      else
        format.html { render :new }
        format.json { render json: @kursy_zamowieny.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kursy_zamowienies/1
  # PATCH/PUT /kursy_zamowienies/1.json
  def update
    respond_to do |format|
      if @kursy_zamowieny.update(kursy_zamowieny_params)
        format.html { redirect_to @kursy_zamowieny, notice: 'Kursy zamowienie was successfully updated.' }
        format.json { render :show, status: :ok, location: @kursy_zamowieny }
      else
        format.html { render :edit }
        format.json { render json: @kursy_zamowieny.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kursy_zamowienies/1
  # DELETE /kursy_zamowienies/1.json
  def destroy
    @kursy_zamowieny.destroy
    respond_to do |format|
      format.html { redirect_to kursy_zamowienies_url, notice: 'Kursy zamowienie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kursy_zamowieny
      @kursy_zamowieny = KursyZamowienie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kursy_zamowieny_params
      params.require(:kursy_zamowieny).permit(:zamowienie_id, :kursy_id)
    end
end
