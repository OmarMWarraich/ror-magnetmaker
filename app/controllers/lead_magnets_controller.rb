class LeadMagnetsController < ApplicationController
  before_action :set_lead_magnet, only: %i[ show edit update destroy ]

  # GET /lead_magnets or /lead_magnets.json
  def index
    @lead_magnets = LeadMagnet.all
  end

  # GET /lead_magnets/1 or /lead_magnets/1.json
  def show
  end

  # GET /lead_magnets/new
  def new
    @lead_magnet = LeadMagnet.new
  end

  # GET /lead_magnets/1/edit
  def edit
  end

  # POST /lead_magnets or /lead_magnets.json
  def create
    @lead_magnet = LeadMagnet.new(lead_magnet_params)

    respond_to do |format|
      if @lead_magnet.save
        format.html { redirect_to lead_magnet_url(@lead_magnet), notice: "Lead magnet was successfully created." }
        format.json { render :show, status: :created, location: @lead_magnet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lead_magnet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lead_magnets/1 or /lead_magnets/1.json
  def update
    respond_to do |format|
      if @lead_magnet.update(lead_magnet_params)
        format.html { redirect_to lead_magnet_url(@lead_magnet), notice: "Lead magnet was successfully updated." }
        format.json { render :show, status: :ok, location: @lead_magnet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lead_magnet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lead_magnets/1 or /lead_magnets/1.json
  def destroy
    @lead_magnet.destroy!

    respond_to do |format|
      format.html { redirect_to lead_magnets_url, notice: "Lead magnet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lead_magnet
      @lead_magnet = LeadMagnet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lead_magnet_params
      params.require(:lead_magnet).permit(:user_id, :name, :ai_template, :prompt)
    end
end
