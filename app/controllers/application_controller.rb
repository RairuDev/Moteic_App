class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  def after_sign_in_path_for(resource)
    "homes#index"
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :encrypetd_password, :email, :gender, :age, :body_shape, :job, :income, :prefecture_id])
  end

  # def after_sign_in_path_for(resource)
  #   mypage_root_path # ログイン後に遷移するpathを設定
  # end

  # def after_sign_out_path_for(resource)
  #   new_user_session_path # ログアウト後に遷移するpathを設定
  # end
end
