module Judge
  class JudgeController < ActionController::Base
    before_action :authenticate_user!
    before_action :user_is_judge
    layout 'judge/application'

    def user_is_judge
      redirect_to root_path if current_user.role != 'judge'
    end
  end
end