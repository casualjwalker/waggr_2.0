class DoggiesController < ApplicationController
  before_action :set_doggy, only: [:show, :edit, :update, :destroy]

  # GET /doggies
  # GET /doggies.json
  def index
    @doggies = Doggy.all
  end

  # GET /doggies/1
  # GET /doggies/1.json
  def show
  end

  # GET /doggies/new
  def new
    @doggy = Doggy.new
    @parents = Parent.all
  end

  # GET /doggies/1/edit
  def edit
    @parents = Parent.all
  end

  # POST /doggies
  # POST /doggies.json
  def create
    @doggy = Doggy.new(doggy_params)
    @parents = Parent.all

    respond_to do |format|
      if @doggy.save
        format.html { redirect_to @doggy, notice: 'Doggy was successfully created.' }
        format.json { render :show, status: :created, location: @doggy }
      else
        format.html { render :new }
        format.json { render json: @doggy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doggies/1
  # PATCH/PUT /doggies/1.json
  def update
    respond_to do |format|
      if @doggy.update(doggy_params)
        format.html { redirect_to @doggy, notice: 'Doggy was successfully updated.' }
        format.json { render :show, status: :ok, location: @doggy }
      else
        format.html { render :edit }
        format.json { render json: @doggy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doggies/1
  # DELETE /doggies/1.json
  def destroy
    @doggy.destroy
    respond_to do |format|
      format.html { redirect_to doggies_url, notice: 'Doggy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doggy
      @doggy = Doggy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doggy_params
      params.require(:doggy).permit(:name, :breed, :age, :temperment, :FunFact, :parent_id)
    end
end
