class ClientProductsController < ApplicationController
  before_action :set_client_product, only: [:show, :edit, :update, :destroy]

  # GET /client_products
  # GET /client_products.json
  def index
    @client_products = ClientProduct.all
    @clients = Client.all
    @products = Product.all
  end

  # GET /client_products/1
  # GET /client_products/1.json
  def show
  end

  # GET /client_products/new
  def new
    @client_product = ClientProduct.new
  end

  # GET /client_products/1/edit
  def edit
  end

  # POST /client_products
  # POST /client_products.json
  def create
    @client_product = ClientProduct.new(client_product_params)

    respond_to do |format|
      if @client_product.save
        format.html { redirect_to @client_product, notice: 'Client product was successfully created.' }
        format.json { render :show, status: :created, location: @client_product }
      else
        format.html { render :new }
        format.json { render json: @client_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_products/1
  # PATCH/PUT /client_products/1.json
  def update
    respond_to do |format|
      if @client_product.update(client_product_params)
        format.html { redirect_to @client_product, notice: 'Client product was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_product }
      else
        format.html { render :edit }
        format.json { render json: @client_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_products/1
  # DELETE /client_products/1.json
  def destroy
    @client_product.destroy
    respond_to do |format|
      format.html { redirect_to client_products_url, notice: 'Client product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_product
      @client_product = ClientProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_product_params
      params.require(:client_product).permit(:client_id, :product_id)
    end
end
