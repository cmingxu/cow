class BookRecordsController < ApplicationController
  # GET /book_records
  # GET /book_records.json
  def index
    @book_records = BookRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @book_records }
    end
  end

  # GET /book_records/1
  # GET /book_records/1.json
  def show
    @book_record = BookRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book_record }
    end
  end

  # GET /book_records/new
  # GET /book_records/new.json
  def new
    @book_record = BookRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book_record }
    end
  end

  # GET /book_records/1/edit
  def edit
    @book_record = BookRecord.find(params[:id])
  end

  # POST /book_records
  # POST /book_records.json
  def create
    @book_record = BookRecord.new(params[:book_record])

    respond_to do |format|
      if @book_record.save
        format.html { redirect_to @book_record, notice: 'Book record was successfully created.' }
        format.json { render json: @book_record, status: :created, location: @book_record }
      else
        format.html { render action: "new" }
        format.json { render json: @book_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /book_records/1
  # PUT /book_records/1.json
  def update
    @book_record = BookRecord.find(params[:id])

    respond_to do |format|
      if @book_record.update_attributes(params[:book_record])
        format.html { redirect_to @book_record, notice: 'Book record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_records/1
  # DELETE /book_records/1.json
  def destroy
    @book_record = BookRecord.find(params[:id])
    @book_record.destroy

    respond_to do |format|
      format.html { redirect_to book_records_url }
      format.json { head :no_content }
    end
  end
end
