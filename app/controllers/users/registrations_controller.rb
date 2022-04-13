# frozen_string_literal: true
class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  def step2
    session[:email] = sign_up_params[:email]
    session[:password] = sign_up_params[:password]
    @user = User.new(sign_up_params)
    # render :new if @user.invalid?
  end

  def step3
    #step２で入力した情報を保持
    session[:name] = sign_up_params[:name]
    session[:gender] = sign_up_params[:gender]
    session[:body_shape] = sign_up_params[:body_shape]
    session[:age] = sign_up_params[:age]
    @user = User.new(sign_up_params)
    render :new and return if params[:back]
    # render :step2 if @user.invalid?
  end

  def confirm
    #step３で入力した情報を保持
    session[:job] = sign_up_params[:job]
    session[:income] = sign_up_params[:income]
    session[:prefecture_id] = sign_up_params[:prefecture_id]
    @user = User.new(
      email: session[:email],
      password: session[:password],
      name: session[:name],
      gender: session[:gender],
      body_shape: session[:body_shape],
      age: session[:age],
      income: session[:income],
      job: session[:job],
      prefecture_id: session[:prefecture_id]
    )
    # render :step3 if @user.invalid?
    render :step2 and return if params[:back]
    # binding.pry
  end
  # POST /resource
  def create
    @user = User.new(
      email: session[:email],
      password: session[:password],
      name: session[:name],
      gender: session[:gender],
      body_shape: session[:body_shape],
      age: session[:age],
      income: session[:income],
      job: session[:job],
      prefecture_id: session[:prefecture_id]
    )
    session["devise.regist_data"] = {user: @user.attributes}
    # session["devise.regist_data"][:user]["password"] = params[:user][:password]
    # binding.pry
    render :step3 and return if params[:back]
    # binding.pry
    # if @user.invalid?
    #   flash.now[:alert] = @user.errors.full_messages
    #   render :confirm and return
    # else
    #   @user.save
    # end
  end

  def completion
    @user = current_user
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
