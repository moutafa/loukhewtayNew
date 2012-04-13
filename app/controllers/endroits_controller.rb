class EndroitsController < ApplicationController
  # GET /endroits
  # GET /endroits.json
  def index
    @endroits = Endroit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @endroits }
    end
  end

  # GET /endroits/1
  # GET /endroits/1.json
  def show
    @endroit = Endroit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @endroit }
    end
  end

  # GET /endroits/new
  # GET /endroits/new.json
  def new
    @endroit = Endroit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @endroit }
    end
  end

  # GET /endroits/1/edit
  def edit
    @endroit = Endroit.find(params[:id])
  end

  # POST /endroits
  # POST /endroits.json
  def create
    @endroit = Endroit.new(params[:endroit])

    respond_to do |format|
      if @endroit.save
        format.html { redirect_to @endroit, notice: 'Endroit was successfully created.' }
        format.json { render json: @endroit, status: :created, location: @endroit }
      else
        format.html { render action: "new" }
        format.json { render json: @endroit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /endroits/1
  # PUT /endroits/1.json
  def update
    @endroit = Endroit.find(params[:id])

    respond_to do |format|
      if @endroit.update_attributes(params[:endroit])
        format.html { redirect_to @endroit, notice: 'Endroit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @endroit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /endroits/1
  # DELETE /endroits/1.json
  def destroy
    @endroit = Endroit.find(params[:id])
    @endroit.destroy

    respond_to do |format|
      format.html { redirect_to endroits_url }
      format.json { head :no_content }
    end
  end
end
