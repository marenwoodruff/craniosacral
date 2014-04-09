class CraniosacralsController < ApplicationController

  def index
    @craniosacrals = Craniosacral.all
  end

  def show
    @craniosacral = Craniosacral.find_by(name: "Gloria")
  end

  def new
    @craniosacral = Craniosacral.new
  end

  def edit
    @craniosacral = Craniosacral.find_by(name: "Gloria")
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
    @craniosacral = Craniosacral.find(params[:id])
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
    # Never trust parameters from the scary internet, only allow the white list through.
    def craniosacral_params
      params.require(:craniosacral).permit(:name, :address)
    end
end
