class ReagentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_reagent, only: [:show, :edit, :update, :destroy]

  # GET /reagents
  # GET /reagents.json
  def index
    @reagents = current_user.reagents
  end

  # GET /reagents/1
  # GET /reagents/1.json
  def show
  end

  # GET /reagents/new
  def new
    @reagent = current_user.reagents.new
    #@reagent = current_user.reagents.new **TO INVENTARY**
  end

  # GET /reagents/1/edit
  def edit
  end

  # POST /reagents
  # POST /reagents.json
  def create
    @reagent = current_user.reagents.new(reagent_params)

    respond_to do |format|
      if @reagent.save
        format.html { redirect_to @reagent, notice: 'Reagent was successfully created.' }
        format.json { render :show, status: :created, location: @reagent }
      else
        format.html { render :new }
        format.json { render json: @reagent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reagents/1
  # PATCH/PUT /reagents/1.json
  def update
    respond_to do |format|
      if @reagent.update(reagent_params)
        format.html { redirect_to @reagent, notice: 'Reagent was successfully updated.' }
        format.json { render :show, status: :ok, location: @reagent }
      else
        format.html { render :edit }
        format.json { render json: @reagent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reagents/1
  # DELETE /reagents/1.json
  def destroy
    @reagent.destroy
    respond_to do |format|
      format.html { redirect_to reagents_url, notice: 'Reagent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reagent
      @reagent = current_user.reagents.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reagent_params
      params.require(:reagent).permit(:name, :formula, :quantity)
    end
end
