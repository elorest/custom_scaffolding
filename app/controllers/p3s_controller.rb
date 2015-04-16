class P3sController < ApplicationController
  before_action :set_p3, only: [:show, :edit, :update, :destroy]

  # GET /p3s
  # GET /p3s.json
  def index
    @p3s = P3.all
  end

  # GET /p3s/1
  # GET /p3s/1.json
  def show
  end

  # GET /p3s/new
  def new
    @p3 = P3.new
  end

  # GET /p3s/1/edit
  def edit
  end

  # POST /p3s
  # POST /p3s.json
  def create
    @p3 = P3.new(p3_params)

    respond_to do |format|
      if @p3.save
        format.html { redirect_to @p3, notice: 'P3 was successfully created.' }
        format.json { render :show, status: :created, location: @p3 }
      else
        format.html { render :new }
        format.json { render json: @p3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p3s/1
  # PATCH/PUT /p3s/1.json
  def update
    respond_to do |format|
      if @p3.update(p3_params)
        format.html { redirect_to @p3, notice: 'P3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @p3 }
      else
        format.html { render :edit }
        format.json { render json: @p3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p3s/1
  # DELETE /p3s/1.json
  def destroy
    @p3.destroy
    respond_to do |format|
      format.html { redirect_to p3s_url, notice: 'P3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p3
      @p3 = P3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p3_params
      params.require(:p3).permit(:title)
    end
end
