class R72sController < ApplicationController
  before_action :set_r72, only: [:show, :edit, :update, :destroy]
  access user: [:index]
  # GET /r72s
  def index
    @r72s = R72.all
  end

  # GET /r72s/1
  def show
  end

  # GET /r72s/new
  def new
    @r72 = R72.new
  end

  # GET /r72s/1/edit
  def edit
  end

  # POST /r72s
  def create
    @r72 = R72.new(r72_params)

    if @r72.save
      redirect_to @r72, notice: 'R72 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /r72s/1
  def update
    if @r72.update(r72_params)
      redirect_to @r72, notice: 'R72 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /r72s/1
  def destroy
    @r72.destroy
    redirect_to r72s_url, notice: 'R72 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_r72
      @r72 = R72.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def r72_params
      params.require(:r72).permit(:title)
    end
end
