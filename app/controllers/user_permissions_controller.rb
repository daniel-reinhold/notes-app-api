class UserPermissionsController < ApplicationController
  before_action :set_user_permission, only: [:show, :update, :destroy]

  # GET /user_permissions
  def index
    @user_permissions = UserPermission.all

    render json: @user_permissions
  end

  # GET /user_permissions/1
  def show
    render json: @user_permission
  end

  # POST /user_permissions
  def create
    @user_permission = UserPermission.new(user_permission_params)

    if @user_permission.save
      render json: @user_permission, status: :created, location: @user_permission
    else
      render json: @user_permission.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_permissions/1
  def update
    if @user_permission.update(user_permission_params)
      render json: @user_permission
    else
      render json: @user_permission.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_permissions/1
  def destroy
    @user_permission.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_permission
      @user_permission = UserPermission.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_permission_params
      params.fetch(:user_permission, {})
    end
end
