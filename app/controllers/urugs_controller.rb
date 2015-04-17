class UrugsController < ApplicationController
  before_action :set_urug, only: [:show, :edit, :update, :destroy]
  access user: [:index]
  # GET /urugs
  def index
    @urugs = Urug.all
  end

  # GET /urugs/1
  def show
  end

  # GET /urugs/new
  def new
    @urug = Urug.new
  end

  # GET /urugs/1/edit
  def edit
  end

  # POST /urugs
  def create
    @urug = Urug.new(urug_params)

    if @urug.save
      redirect_to @urug, notice: 'Urug was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /urugs/1
  def update
    if @urug.update(urug_params)
      redirect_to @urug, notice: 'Urug was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /urugs/1
  def destroy
    @urug.destroy
    redirect_to urugs_url, notice: 'Urug was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_urug
      @urug = Urug.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def urug_params
      params.require(:urug).permit(:title)
    end
end
