class GroupShotsController < ApplicationController
  before_action :set_group_shot, only: [:show, :edit, :update, :destroy]

  # GET /group_shots
  # GET /group_shots.json
  def index
    @group_shots = GroupShot.all
  end

  # GET /group_shots/1
  # GET /group_shots/1.json
  def show
  end

  # GET /group_shots/new
  def new
    @group_shot = GroupShot.new
  end

  # GET /group_shots/1/edit
  def edit
  end

  # POST /group_shots
  # POST /group_shots.json
  def create
    @group_shot = GroupShot.new(group_shot_params)

    respond_to do |format|
      if @group_shot.save
        format.html { redirect_to @group_shot, notice: 'Group shot was successfully created.' }
        format.json { render :show, status: :created, location: @group_shot }
      else
        format.html { render :new }
        format.json { render json: @group_shot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_shots/1
  # PATCH/PUT /group_shots/1.json
  def update
    respond_to do |format|
      if @group_shot.update(group_shot_params)
        format.html { redirect_to @group_shot, notice: 'Group shot was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_shot }
      else
        format.html { render :edit }
        format.json { render json: @group_shot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_shots/1
  # DELETE /group_shots/1.json
  def destroy
    @group_shot.destroy
    respond_to do |format|
      format.html { redirect_to group_shots_url, notice: 'Group shot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_shot
      @group_shot = GroupShot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_shot_params
      params[:group_shot]
    end
end
