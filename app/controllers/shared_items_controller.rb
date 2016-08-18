class SharedItemsController < ApplicationController
  before_action :set_shared_item, only: [:show, :edit, :update, :destroy]

  # GET /shared_items
  # GET /shared_items.json
  def index
    @shared_items = SharedItem.all
  end

  # GET /shared_items/1
  # GET /shared_items/1.json
  def show
  end

  # GET /shared_items/new
  def new
    @shared_item = SharedItem.new
  end

  # GET /shared_items/1/edit
  def edit
  end

  # POST /shared_items
  # POST /shared_items.json
  def create
    @shared_item = SharedItem.new(shared_item_params)

    respond_to do |format|
      if @shared_item.save
        format.html { redirect_to @shared_item.apartment, notice: 'Shared item was successfully created.' }
        format.json { render :show, status: :created, location: @shared_item }
      else
        format.html { render :new }
        format.json { render json: @shared_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shared_items/1
  # PATCH/PUT /shared_items/1.json
  def update
    respond_to do |format|
      if @shared_item.update(shared_item_params)
        format.html { redirect_to @shared_item, notice: 'Shared item was successfully updated.' }
        format.json { render :show, status: :ok, location: @shared_item }
      else
        format.html { render :edit }
        format.json { render json: @shared_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shared_items/1
  # DELETE /shared_items/1.json
  def destroy
    @shared_item.destroy
    respond_to do |format|
      format.html { redirect_to shared_items_url, notice: 'Shared item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shared_item
      @shared_item = SharedItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shared_item_params
      params.require(:shared_item).permit(:name, :photo, :user_id)
    end
end
