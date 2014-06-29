class SelfiesController < ApplicationController
  before_action :set_group, only: [:create]
  before_action :set_group_shot, only: [:create]
  before_action :set_selfie, only: [:show, :edit, :update, :destroy]
  
  skip_before_filter :verify_authenticity_token, only: [:create]

  # GET /selfies
  # GET /selfies.json
  def index
    @selfies = Selfie.all
  end

  # GET /selfies/1
  # GET /selfies/1.json
  def show
  end

  # GET /selfies/new
  def new
    @selfie = Selfie.new
  end

  # GET /selfies/1/edit
  def edit
  end

  # POST /selfies
  # POST /selfies.json
  def create
    @selfie = @group_shot.selfies.build(user_id: current_user.id, image: selfie_params[:image])

    respond_to do |format|
      if @selfie.save
        format.html { redirect_to @selfie, notice: 'Selfie was successfully created.' }
        format.json { render :show, status: :created, location: @selfie }
      else
        format.html { render :new }
        format.json { render json: @selfie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /selfies/1
  # PATCH/PUT /selfies/1.json
  def update
    respond_to do |format|
      if @selfie.update(selfie_params)
        format.html { redirect_to @selfie, notice: 'Selfie was successfully updated.' }
        format.json { render :show, status: :ok, location: @selfie }
      else
        format.html { render :edit }
        format.json { render json: @selfie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selfies/1
  # DELETE /selfies/1.json
  def destroy
    @selfie.destroy
    respond_to do |format|
      format.html { redirect_to selfies_url, notice: 'Selfie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selfie
      @selfie = Selfie.find(params[:id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:group_id])
    end

    def set_group_shot
      @group_shot = GroupShot.find(params[:group_shot_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def selfie_params
      params.permit!
    end
end
