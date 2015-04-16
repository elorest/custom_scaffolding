class P2sController < ApplicationController
  before_action :set_p2, only: [:show, :edit, :update, :destroy]

  # GET /p2s
  # GET /p2s.json
  def index
    @p2s = P2.all
  end

  # GET /p2s/1
  # GET /p2s/1.json
  def show
  end

  # GET /p2s/new
  def new
    @p2 = P2.new
  end

  # GET /p2s/1/edit
  def edit
  end

  # POST /p2s
  # POST /p2s.json
  def create
    @p2 = P2.new(p2_params)

    respond_to do |format|
      if @p2.save
        format.html { redirect_to @p2, notice: 'P2 was successfully created.' }
        format.json { render :show, status: :created, location: @p2 }
      else
        format.html { render :new }
        format.json { render json: @p2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p2s/1
  # PATCH/PUT /p2s/1.json
  def update
    respond_to do |format|
      if @p2.update(p2_params)
        format.html { redirect_to @p2, notice: 'P2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @p2 }
      else
        format.html { render :edit }
        format.json { render json: @p2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p2s/1
  # DELETE /p2s/1.json
  def destroy
    @p2.destroy
    respond_to do |format|
      format.html { redirect_to p2s_url, notice: 'P2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p2
      @p2 = P2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p2_params
      params.require(:p2).permit(:title)
    end
end
