class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    #before_action :configure_account_update_params, only: [:update]

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) # 新規登録時(sign_up時)にnameというキーのパラメーターを追加で許可する
    end

    def configure_account_update_params
        devise_parameter_sanitizer.permit(:account_update,  keys: [:name])
    end
    def after_sign_in_path_for(resource)
        homes_path # ログイン後に遷移するpathを設定
    end

    def after_sign_out_path_for(resource)
        homes_path # ログアウト後に遷移するpathを設定
    end
end
