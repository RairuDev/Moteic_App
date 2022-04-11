# frozen_string_literal: true
class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  def step2
    @user = User.new(sign_up_params)
  end

  def step3
    @user = User.new(sign_up_params)
    render :new and return if params[:back]
    # binding.pry
  end

  def confirm
    @user = User.new(sign_up_params)
    render :step2 and return if params[:back]
  end

  # POST /resource
  # def create
  #   super
  # end

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

  def validates_step1
    # step2で入力された値をsessionに保存
    binding.pry
    session[:name] = user_params[:name]
    # バリデーション用に、仮でインスタンスを作成する
    @user = User.new(
      nickname: session[:nickname], # sessionに保存された値をインスタンスに渡す
      email: session[:email],
      password: session[:password],
      password_confirmation: session[:password_confirmation],
      last_name: "山田", # 入力前の情報は、バリデーションに通る値を仮で入れる
      first_name: "太郎", 
      last_name_kana: "ヤマダ", 
      first_name_kana: "タロウ", 
    )
    # 仮で作成したインスタンスのバリデーションチェックを行う
    render '/signup/step1' unless @user.valid?
  end
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
