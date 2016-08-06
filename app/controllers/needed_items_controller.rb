class NeededItemsController < ApplicationController
  before_action :set_needed_item, only: [:show, :edit, :update, :destroy]

  # GET /needed_items
  # GET /needed_items.json
  def index
    @needed_items = NeededItem.all
  end

  # GET /needed_items/1
  # GET /needed_items/1.json
  def show
  end

  # GET /needed_items/new
  def new
    @needed_item = NeededItem.new
  end

  # GET /needed_items/1/edit
  def edit
  end

  # POST /needed_items
  # POST /needed_items.json
  def create
    @needed_item = NeededItem.new(needed_item_params)

    respond_to do |format|
      if @needed_item.save
        format.html { redirect_to @needed_item, notice: 'Needed item was successfully created.' }
        format.json { render :show, status: :created, location: @needed_item }
      else
        format.html { render :new }
        format.json { render json: @needed_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /needed_items/1
  # PATCH/PUT /needed_items/1.json
  def update
    respond_to do |format|
      if @needed_item.update(needed_item_params)
        format.html { redirect_to @needed_item, notice: 'Needed item was successfully updated.' }
        format.json { render :show, status: :ok, location: @needed_item }
      else
        format.html { render :edit }
        format.json { render json: @needed_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /needed_items/1
  # DELETE /needed_items/1.json
  def destroy
    @needed_item.destroy
    respond_to do |format|
      format.html { redirect_to needed_items_url, notice: 'Needed item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_needed_item
      @needed_item = NeededItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def needed_item_params
      params.require(:needed_item).permit(:name, :price, :user_id, :apartment_id)
    end
end
