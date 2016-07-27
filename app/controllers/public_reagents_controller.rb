class PublicReagentsController < ApplicationController
  before_action :authenticate_user!
  # GET /inventories
  # GET /inventories.json
  def index
    @reagents = Reagent.all.reorder('name ASC')
  end

  # GET /inventories/1
  # GET /inventories/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reagent
      @reagent = Reagent.find(params[:id])
    end
end
