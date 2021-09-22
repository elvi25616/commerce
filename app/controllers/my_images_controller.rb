class MyImagesController < ApplicationController
  #before_action :set_my_image, only: [:show, :edit, :update, :destroy]
  before_action :set_product
  load_and_authorize_resource
  # GET /my_images
  # GET /my_images.json
  def index
    @my_images = MyImage.all
  end

  # GET /my_images/1
  # GET /my_images/1.json
  def show
  end

  # GET /my_images/new
  def new
    @my_image = MyImage.new
  end

  # GET /my_images/1/edit
  def edit
  end

  # POST /my_images
  # POST /my_images.json
  def create
    @my_image = MyImage.new(my_image_params)

    respond_to do |format|
      if @my_image.save
        format.html { redirect_to @my_image, notice: 'My image was successfully created.' }
        format.json { render :show, status: :created, location: @my_image }
      else
        format.html { render :new }
        format.json { render json: @my_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_images/1
  # PATCH/PUT /my_images/1.json
  def update
    respond_to do |format|
      if @my_image.update(my_image_params)
        format.html { redirect_to @my_image, notice: 'My image was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_image }
      else
        format.html { render :edit }
        format.json { render json: @my_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_images/1
  # DELETE /my_images/1.json
  def destroy
    @my_image.destroy
    respond_to do |format|
      format.html { redirect_to my_images_url, notice: 'My image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_image
      @my_image = MyImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_image_params
      params.require(:my_image).permit(:img, :title, :description)
    end

     def set_product
      @product = Product.find(params[:product_id])
    end
end
