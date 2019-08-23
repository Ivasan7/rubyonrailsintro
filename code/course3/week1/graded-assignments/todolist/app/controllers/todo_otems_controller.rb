class TodoOtemsController < ApplicationController
  before_action :set_todo_otem, only: [:show, :edit, :update, :destroy]

  # GET /todo_otems
  # GET /todo_otems.json
  def index
    @todo_otems = TodoOtem.all
  end

  # GET /todo_otems/1
  # GET /todo_otems/1.json
  def show
  end

  # GET /todo_otems/new
  def new
    @todo_otem = TodoOtem.new
  end

  # GET /todo_otems/1/edit
  def edit
  end

  # POST /todo_otems
  # POST /todo_otems.json
  def create
    @todo_otem = TodoOtem.new(todo_otem_params)

    respond_to do |format|
      if @todo_otem.save
        format.html { redirect_to @todo_otem, notice: 'Todo otem was successfully created.' }
        format.json { render :show, status: :created, location: @todo_otem }
      else
        format.html { render :new }
        format.json { render json: @todo_otem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo_otems/1
  # PATCH/PUT /todo_otems/1.json
  def update
    respond_to do |format|
      if @todo_otem.update(todo_otem_params)
        format.html { redirect_to @todo_otem, notice: 'Todo otem was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo_otem }
      else
        format.html { render :edit }
        format.json { render json: @todo_otem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_otems/1
  # DELETE /todo_otems/1.json
  def destroy
    @todo_otem.destroy
    respond_to do |format|
      format.html { redirect_to todo_otems_url, notice: 'Todo otem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_otem
      @todo_otem = TodoOtem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_otem_params
      params.require(:todo_otem).permit(:due_date, :title, :description, :completed)
    end
end
