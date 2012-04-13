class CategorieEndroitsController < ApplicationController
  # GET /categorie_endroits
  # GET /categorie_endroits.json
  def index
    @categorie_endroits = CategorieEndroit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categorie_endroits }
    end
  end

  # GET /categorie_endroits/1
  # GET /categorie_endroits/1.json
  def show
    @categorie_endroit = CategorieEndroit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @categorie_endroit }
    end
  end

  # GET /categorie_endroits/new
  # GET /categorie_endroits/new.json
  def new
    @categorie_endroit = CategorieEndroit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @categorie_endroit }
    end
  end

  # GET /categorie_endroits/1/edit
  def edit
    @categorie_endroit = CategorieEndroit.find(params[:id])
  end

  # POST /categorie_endroits
  # POST /categorie_endroits.json
  def create
    @categorie_endroit = CategorieEndroit.new(params[:categorie_endroit])

    respond_to do |format|
      if @categorie_endroit.save
        format.html { redirect_to @categorie_endroit, notice: 'Categorie endroit was successfully created.' }
        format.json { render json: @categorie_endroit, status: :created, location: @categorie_endroit }
      else
        format.html { render action: "new" }
        format.json { render json: @categorie_endroit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /categorie_endroits/1
  # PUT /categorie_endroits/1.json
  def update
    @categorie_endroit = CategorieEndroit.find(params[:id])

    respond_to do |format|
      if @categorie_endroit.update_attributes(params[:categorie_endroit])
        format.html { redirect_to @categorie_endroit, notice: 'Categorie endroit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @categorie_endroit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categorie_endroits/1
  # DELETE /categorie_endroits/1.json
  def destroy
    @categorie_endroit = CategorieEndroit.find(params[:id])
    @categorie_endroit.destroy

    respond_to do |format|
      format.html { redirect_to categorie_endroits_url }
      format.json { head :no_content }
    end
  end
end
