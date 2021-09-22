class MyimagesController < ApplicationController
  #before_action :set_myimage, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  before_action :set_product
  # GET /myimages
  # GET /myimages.json
  #def index
   # @myimages = Myimage.all
  #end

  # GET /myimages/1
  # GET /myimages/1.json
  def show
  end

  # GET /myimages/new
  def new
    @myimage = Myimage.new
  end

  # GET /myimages/1/edit
  def edit
  end

  # POST /myimages
  # POST /myimages.json
  def create
    @myimage = @product.myimages.new(myimage_params)

    respond_to do |format|
      if @myimage.save
        format.html { redirect_to @myimage.product, notice: 'Myimage was successfully created.' }
        format.json { render :show, status: :created, location: @myimage }
      else
        format.html { render :new }
        format.json { render json: @myimage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myimages/1
  # PATCH/PUT /myimages/1.json
  def update
    respond_to do |format|
      if @myimage.update(myimage_params)
        format.html { redirect_to @myimage.product, notice: 'Myimage was successfully updated.' }
        format.json { render :show, status: :ok, location: @myimage }
      else
        format.html { render :edit }
        format.json { render json: @myimage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myimages/1
  # DELETE /myimages/1.json
  def destroy
    @myimage.destroy
    respond_to do |format|
      format.html { redirect_to @product, notice: 'Myimage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myimage
      @myimage = Myimage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myimage_params
      params.require(:myimage).permit(:img, :title, :description)
    end
    def set_product
      @product = Product.find(params[:product_id])
    end

end
