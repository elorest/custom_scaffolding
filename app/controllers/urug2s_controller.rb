class Urug2sController < ApplicationController
  before_action :set_urug2, only: [:show, :edit, :update, :destroy]
  access user: [:index]
  # GET /urug2s
  def index
    @urug2s = Urug2.all
  end

  # GET /urug2s/1
  def show
  end

  # GET /urug2s/new
  def new
    @urug2 = Urug2.new
  end

  # GET /urug2s/1/edit
  def edit
  end

  # POST /urug2s
  def create
    @urug2 = Urug2.new(urug2_params)

    if @urug2.save
      redirect_to @urug2, notice: 'Urug2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /urug2s/1
  def update
    if @urug2.update(urug2_params)
      redirect_to @urug2, notice: 'Urug2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /urug2s/1
  def destroy
    @urug2.destroy
    redirect_to urug2s_url, notice: 'Urug2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_urug2
      @urug2 = Urug2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def urug2_params
      params.require(:urug2).permit(:title)
    end
end
