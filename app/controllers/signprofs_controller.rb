class SignprofsController < ApplicationController
  before_action :set_signprof, only: [:show, :edit, :update, :destroy]

  # GET /signprofs
  # GET /signprofs.json
  def index
    @signprofs = Signprof.all
  end

  # GET /signprofs/1
  # GET /signprofs/1.json
  def show
  end

  # GET /signprofs/new
  def new
    @signprof = Signprof.new
  end

  # GET /signprofs/1/edit
  def edit
  end

  # POST /signprofs
  # POST /signprofs.json
  def create
    @signprof = Signprof.new(signprof_params)

    respond_to do |format|
      if @signprof.save
        format.html { redirect_to @signprof, notice: 'Signprof was successfully created.' }
        format.json { render :show, status: :created, location: @signprof }
      else
        format.html { render :new }
        format.json { render json: @signprof.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /signprofs/1
  # PATCH/PUT /signprofs/1.json
  def update
    respond_to do |format|
      if @signprof.update(signprof_params)
        format.html { redirect_to @signprof, notice: 'Signprof was successfully updated.' }
        format.json { render :show, status: :ok, location: @signprof }
      else
        format.html { render :edit }
        format.json { render json: @signprof.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /signprofs/1
  # DELETE /signprofs/1.json
  def destroy
    @signprof.destroy
    respond_to do |format|
      format.html { redirect_to signprofs_url, notice: 'Signprof was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_signprof
      @signprof = Signprof.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def signprof_params
      params.require(:signprof).permit(:name, :address, :email, :phone, :qualification)
    end
end
