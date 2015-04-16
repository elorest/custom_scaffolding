class P1sController < ApplicationController
  before_action :set_p1, only: [:show, :edit, :update, :destroy]

  # GET /p1s
  # GET /p1s.json
  def index
    @p1s = P1.all
  end

  # GET /p1s/1
  # GET /p1s/1.json
  def show
  end

  # GET /p1s/new
  def new
    @p1 = P1.new
  end

  # GET /p1s/1/edit
  def edit
  end

  # POST /p1s
  # POST /p1s.json
  def create
    @p1 = P1.new(p1_params)

    respond_to do |format|
      if @p1.save
        format.html { redirect_to @p1, notice: 'P1 was successfully created.' }
        format.json { render :show, status: :created, location: @p1 }
      else
        format.html { render :new }
        format.json { render json: @p1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p1s/1
  # PATCH/PUT /p1s/1.json
  def update
    respond_to do |format|
      if @p1.update(p1_params)
        format.html { redirect_to @p1, notice: 'P1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @p1 }
      else
        format.html { render :edit }
        format.json { render json: @p1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p1s/1
  # DELETE /p1s/1.json
  def destroy
    @p1.destroy
    respond_to do |format|
      format.html { redirect_to p1s_url, notice: 'P1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p1
      @p1 = P1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p1_params
      params.require(:p1).permit(:title)
    end
end
