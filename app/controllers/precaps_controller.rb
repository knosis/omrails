class PrecapsController < ApplicationController
  # GET /precaps
  # GET /precaps.json
  def index
    @precaps = Precap.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @precaps }
    end
  end

  # GET /precaps/1
  # GET /precaps/1.json
  def show
    @precap = Precap.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @precap }
    end
  end

  # GET /precaps/new
  # GET /precaps/new.json
  def new
    @precap = Precap.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @precap }
    end
  end

  # GET /precaps/1/edit
  def edit
    @precap = Precap.find(params[:id])
  end

  # POST /precaps
  # POST /precaps.json
  def create
    @precap = Precap.new(params[:precap])

    respond_to do |format|
      if @precap.save
        format.html { redirect_to @precap, notice: 'Precap was successfully created.' }
        format.json { render json: @precap, status: :created, location: @precap }
      else
        format.html { render action: "new" }
        format.json { render json: @precap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /precaps/1
  # PUT /precaps/1.json
  def update
    @precap = Precap.find(params[:id])

    respond_to do |format|
      if @precap.update_attributes(params[:precap])
        format.html { redirect_to @precap, notice: 'Precap was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @precap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /precaps/1
  # DELETE /precaps/1.json
  def destroy
    @precap = Precap.find(params[:id])
    @precap.destroy

    respond_to do |format|
      format.html { redirect_to precaps_url }
      format.json { head :no_content }
    end
  end
end
