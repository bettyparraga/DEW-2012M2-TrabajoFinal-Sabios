class EmprendedorsController < ApplicationController
  # GET /emprendedors
  # GET /emprendedors.json
  def index
    @emprendedors = Emprendedor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @emprendedors }
    end
  end

  # GET /emprendedors/1
  # GET /emprendedors/1.json
  def show
    @emprendedor = Emprendedor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @emprendedor }
    end
  end

  # GET /emprendedors/new
  # GET /emprendedors/new.json
  def new
    @emprendedor = Emprendedor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @emprendedor }
    end
  end

  # GET /emprendedors/1/edit
  def edit
    @emprendedor = Emprendedor.find(params[:id])
  end

  # POST /emprendedors
  # POST /emprendedors.json
  def create
    @emprendedor = Emprendedor.new(params[:emprendedor])

    respond_to do |format|
      if @emprendedor.save
        format.html { redirect_to @emprendedor, notice: 'El Emprendedor fue creado con exito.' }
        format.json { render json: @emprendedor, status: :created, location: @emprendedor }
      else
        format.html { render action: "new" }
        format.json { render json: @emprendedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /emprendedors/1
  # PUT /emprendedors/1.json
  def update
    @emprendedor = Emprendedor.find(params[:id])

    respond_to do |format|
      if @emprendedor.update_attributes(params[:emprendedor])
        format.html { redirect_to @emprendedor, notice: 'La actualizacion fue exitosa.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @emprendedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emprendedors/1
  # DELETE /emprendedors/1.json
  def destroy
    @emprendedor = Emprendedor.find(params[:id])
    @emprendedor.destroy

    respond_to do |format|
      format.html { redirect_to emprendedors_url }
      format.json { head :ok }
    end
  end
end
