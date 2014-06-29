class DeviceTokensController < ApplicationController
  before_action :set_device_token, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token

  # GET /device_tokens
  # GET /device_tokens.json
  def index
    @device_tokens = current_user.device_tokens
  end

  # GET /device_tokens/1
  # GET /device_tokens/1.json
  def show
  end

  # GET /device_tokens/new
  def new
    @device_token = current_user.device_tokens.build
  end

  # GET /device_tokens/1/edit
  def edit
  end

  # POST /device_tokens
  # POST /device_tokens.json
  def create
    u = User.last
    @device_token = u.device_tokens.find_or_create_by(device_token_params)

    respond_to do |format|
      if @device_token.save
        format.html { redirect_to @device_token, notice: 'Device token was successfully created.' }
        format.json { render :show, status: :created, location: @device_token }
      else
        format.html { render :new }
        format.json { render json: @device_token.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /device_tokens/1
  # PATCH/PUT /device_tokens/1.json
  def update
    respond_to do |format|
      if @device_token.update(device_token_params)
        format.html { redirect_to @device_token, notice: 'Device token was successfully updated.' }
        format.json { render :show, status: :ok, location: @device_token }
      else
        format.html { render :edit }
        format.json { render json: @device_token.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device_tokens/1
  # DELETE /device_tokens/1.json
  def destroy
    @device_token.destroy
    respond_to do |format|
      format.html { redirect_to device_tokens_url, notice: 'Device token was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device_token
      @device_token = current_user.device_tokens.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_token_params
      params[:device_token].permit!
    end
end
