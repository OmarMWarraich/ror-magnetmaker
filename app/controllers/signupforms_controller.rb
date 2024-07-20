class SignupformsController < ApplicationController
  before_action :set_signupform, only: %i[ show edit update destroy ]

  # GET /signupforms or /signupforms.json
  def index
    @signupforms = Signupform.all
  end

  # GET /signupforms/1 or /signupforms/1.json
  def show
  end

  # GET /signupforms/new
  def new
    @signupform = Signupform.new
  end

  # GET /signupforms/1/edit
  def edit
  end

  # POST /signupforms or /signupforms.json
  def create
    @signupform = Signupform.new(signupform_params)

    respond_to do |format|
      if @signupform.save
        format.html { redirect_to signupform_url(@signupform), notice: "Signupform was successfully created." }
        format.json { render :show, status: :created, location: @signupform }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @signupform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /signupforms/1 or /signupforms/1.json
  def update
    respond_to do |format|
      if @signupform.update(signupform_params)
        format.html { redirect_to signupform_url(@signupform), notice: "Signupform was successfully updated." }
        format.json { render :show, status: :ok, location: @signupform }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @signupform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /signupforms/1 or /signupforms/1.json
  def destroy
    @signupform.destroy!

    respond_to do |format|
      format.html { redirect_to signupforms_url, notice: "Signupform was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_signupform
      @signupform = Signupform.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def signupform_params
      params.require(:signupform).permit(:lead_magnet_id, :headline, :submit_button_text)
    end
end
