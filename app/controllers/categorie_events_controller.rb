class CategorieEventsController < ApplicationController
  # GET /categorie_events
  # GET /categorie_events.json
  def index
    @categorie_events = CategorieEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categorie_events }
    end
  end

  # GET /categorie_events/1
  # GET /categorie_events/1.json
  def show
    @categorie_event = CategorieEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @categorie_event }
    end
  end

  # GET /categorie_events/new
  # GET /categorie_events/new.json
  def new
    @categorie_event = CategorieEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @categorie_event }
    end
  end

  # GET /categorie_events/1/edit
  def edit
    @categorie_event = CategorieEvent.find(params[:id])
  end

  # POST /categorie_events
  # POST /categorie_events.json
  def create
    @categorie_event = CategorieEvent.new(params[:categorie_event])

    respond_to do |format|
      if @categorie_event.save
        format.html { redirect_to @categorie_event, notice: 'Categorie event was successfully created.' }
        format.json { render json: @categorie_event, status: :created, location: @categorie_event }
      else
        format.html { render action: "new" }
        format.json { render json: @categorie_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /categorie_events/1
  # PUT /categorie_events/1.json
  def update
    @categorie_event = CategorieEvent.find(params[:id])

    respond_to do |format|
      if @categorie_event.update_attributes(params[:categorie_event])
        format.html { redirect_to @categorie_event, notice: 'Categorie event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @categorie_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categorie_events/1
  # DELETE /categorie_events/1.json
  def destroy
    @categorie_event = CategorieEvent.find(params[:id])
    @categorie_event.destroy

    respond_to do |format|
      format.html { redirect_to categorie_events_url }
      format.json { head :no_content }
    end
  end
end
