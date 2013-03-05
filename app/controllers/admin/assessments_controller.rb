class Admin::AssessmentsController < ApplicationController
  # GET /assessments
  # GET /assessments.json
  def index
    @assessments = Assessment.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /assessments/1
  # GET /assessments/1.json
  def show
    @assessment = Assessment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /assessments/new
  # GET /assessments/new.json
  def new
    @assessment = Assessment.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /assessments/1/edit
  def edit
    @assessment = Assessment.find(params[:id])
  end

  # POST /assessments
  # POST /assessments.json
  def create
    @assessment = Assessment.new(params[:assessment])

    respond_to do |format|
      if @assessment.save
        format.html { redirect_to [:admin, @assessment], notice: 'Assessment was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /assessments/1
  # PUT /assessments/1.json
  def update
    @assessment = Assessment.find(params[:id])

    respond_to do |format|
      if @assessment.update_attributes(params[:assessment])
        format.html { redirect_to [:admin, @assessment], notice: 'Assessment was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /assessments/1
  # DELETE /assessments/1.json
  def destroy
    @assessment = Assessment.find(params[:id])
    @assessment.destroy

    respond_to do |format|
      format.html { redirect_to admin_assessments_url }
    end
  end
end
