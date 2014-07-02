class HuxingsController < ApplicationController
  # GET /huxings
  # GET /huxings.json
  def index
    @huxings = Huxing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @huxings }
    end
  end

  # GET /huxings/1
  # GET /huxings/1.json
  def show
    @huxing = Huxing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @huxing }
    end
  end

  # GET /huxings/new
  # GET /huxings/new.json
  def new
    @huxing = Huxing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @huxing }
    end
  end

  # GET /huxings/1/edit
  def edit
    @huxing = Huxing.find(params[:id])
  end

  # POST /huxings
  # POST /huxings.json
  def create
    @huxing = Huxing.new(params[:huxing])

    respond_to do |format|
      if @huxing.save
        format.html { redirect_to @huxing, notice: 'Huxing was successfully created.' }
        format.json { render json: @huxing, status: :created, location: @huxing }
      else
        format.html { render action: "new" }
        format.json { render json: @huxing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /huxings/1
  # PUT /huxings/1.json
  def update
    @huxing = Huxing.find(params[:id])

    respond_to do |format|
      if @huxing.update_attributes(params[:huxing])
        format.html { redirect_to @huxing, notice: 'Huxing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @huxing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /huxings/1
  # DELETE /huxings/1.json
  def destroy
    @huxing = Huxing.find(params[:id])
    @huxing.destroy

    respond_to do |format|
      format.html { redirect_to huxings_url }
      format.json { head :no_content }
    end
  end
end
