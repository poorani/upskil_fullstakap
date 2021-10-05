class Users::RegistrationsController < Devise::RegistrationsController
    
  before_action :select_plan, only: :new
  
  def create
    super do |resource|
      if params[:plan]
        resource.plan_id = params[:plan]
        resource.save
        
      end
    end
  end
  
  private
  def select_plan
    unless (params[:plan] == '1' || params[:plan] =='2' || params[:plan] =='3'|| params[:plan] =='4' )
      flash[:notice] = "Please select a membership plan to sign up."
      redirect_to root_url
    end
  end
end