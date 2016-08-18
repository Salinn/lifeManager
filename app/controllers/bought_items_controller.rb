class BoughtItemsController < ApplicationController
  before_action :set_bought_item, only: [:show, :edit, :update, :destroy]

  # GET /bought_items
  # GET /bought_items.json
  def index
    @bought_items = BoughtItem.all
  end

  # GET /bought_items/1
  # GET /bought_items/1.json
  def show
  end

  # GET /bought_items/new
  def new
    @bought_item = BoughtItem.new
  end

  # GET /bought_items/1/edit
  def edit
  end

  # POST /bought_items
  # POST /bought_items.json
  def create
    @bought_item = BoughtItem.new(bought_item_params)

    respond_to do |format|
      if @bought_item.save
        format.html { redirect_to @bought_item.apartment, notice: 'Bought item was successfully created.' }
        format.json { render :show, status: :created, location: @bought_item }
      else
        format.html { render :new }
        format.json { render json: @bought_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bought_items/1
  # PATCH/PUT /bought_items/1.json
  def update
    respond_to do |format|
      if @bought_item.update(bought_item_params)
        format.html { redirect_to @bought_item, notice: 'Bought item was successfully updated.' }
        format.json { render :show, status: :ok, location: @bought_item }
      else
        format.html { render :edit }
        format.json { render json: @bought_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bought_items/1
  # DELETE /bought_items/1.json
  def destroy
    @bought_item.destroy
    respond_to do |format|
      format.html { redirect_to bought_items_url, notice: 'Bought item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bought_item
      @bought_item = BoughtItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bought_item_params
      params.require(:bought_item).permit(:name, :price, :apartment_id, :user_id)
    end
end
