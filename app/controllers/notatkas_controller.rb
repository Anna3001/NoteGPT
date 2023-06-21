class NotatkasController < ApplicationController
  before_action :set_notatka, only: %i[ show edit update destroy ]
  include ApplicationHelper

  # GET /notatkas or /notatkas.json
  def index
    @notatkas = Notatka.where(user_id: current_user.id)
  end

  # GET /notatkas/1 or /notatkas/1.json
  def show
  end

  # GET /notatkas/new
  def new
    @notatka = Notatka.new
   
    @query = params[:query]
    @q = generate_response(@query)
  end

  # GET /notatkas/1/edit
  def edit
  end

  # POST /notatkas or /notatkas.json
  def create
    @notatka = Notatka.new(notatka_params)
    puts @notatka.kategoria 
    
    @k = Category.find_or_initialize_by(title: @notatka.kategoria)

    if @k.new_record?
      @k.description = generate_response("Wymyśl 1 ciekawe zdanie ogólne na temat "+ @notatka.kategoria)
      @k.save
    else
      # Handle the case when a category with the same title already exists
    end

    respond_to do |format|
      if @notatka.save
        format.html { redirect_to notatka_url(@notatka), notice: "Notatka was successfully created." }
        format.json { render :show, status: :created, location: @notatka }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @notatka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notatkas/1 or /notatkas/1.json
  def update
    respond_to do |format|
      if @notatka.update(notatka_params)
        format.html { redirect_to notatka_url(@notatka), notice: "Notatka was successfully updated." }
        format.json { render :show, status: :ok, location: @notatka }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @notatka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notatkas/1 or /notatkas/1.json
  def destroy
    @notatka.destroy

    respond_to do |format|
      format.html { redirect_to notatkas_url, notice: "Notatka was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notatka
      @notatka = Notatka.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def notatka_params
      params.require(:notatka).permit(:tytul, :tekst, :kategoria, :user_id, :color)
    end
end
