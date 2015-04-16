class R7sController < ApplicationController
  before_action :set_r7, only: [:show, :edit, :update, :destroy]

  # GET /r7s
  def index
    @r7s = R7.all
  end

  # GET /r7s/1
  def show
  end

  # GET /r7s/new
  def new
    @r7 = R7.new
  end

  # GET /r7s/1/edit
  def edit
  end

  # POST /r7s
  def create
    @r7 = R7.new(r7_params)

    if @r7.save
      redirect_to @r7, notice: 'R7 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /r7s/1
  def update
    if @r7.update(r7_params)
      redirect_to @r7, notice: 'R7 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /r7s/1
  def destroy
    @r7.destroy
    redirect_to r7s_url, notice: 'R7 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_r7
      @r7 = R7.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def r7_params
      params.require(:r7).permit(:title)
    end
end
