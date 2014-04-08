class CraniosacralsController < ApplicationController
  before_action :set_craniosacral, only: [:show, :edit, :update, :destroy]

  def index
    @craniosacrals = Craniosacral.all
  end

  def show
  end

  def new
    @craniosacral = Craniosacral.new
  end

  def edit
  end

  def create
    @craniosacral = Craniosacral.new(craniosacral_params)

    respond_to do |format|
      if @craniosacral.save
        format.html { redirect_to @craniosacral, notice: 'Craniosacral was successfully created.' }
        format.json { render action: 'show', status: :created, location: @craniosacral }
      else
        format.html { render action: 'new' }
        format.json { render json: @craniosacral.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @craniosacral.update(craniosacral_params)
        format.html { redirect_to @craniosacral, notice: 'Craniosacral was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @craniosacral.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @craniosacral.destroy
    respond_to do |format|
      format.html { redirect_to craniosacrals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_craniosacral
      @craniosacral = Craniosacral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def craniosacral_params
      params[:craniosacral]
    end
end
