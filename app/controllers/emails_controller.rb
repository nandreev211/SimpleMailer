class EmailsController < ApplicationController
  def index
    @sent=Email.where(is_draft:false).order("created_at desc")
    @draft=Email.where(is_draft:true).order("created_at desc")
  end

  def new
    @email = Email.new
  end

  def create
    @email = Email.new(email_params)
    if @email.save
      # only send email when it is not saved as draft as email
      if @email.is_draft!=true

      end
      redirect_to emails_path #redirect to index action
    else
      render new_email_path # if error occurs when saving to db , render with error messages, not redirect
    end
  end

  def edit
    @email = Email.find(params[:id])
  end

  def update

  end

  private
    def email_params
      params.require(:email).permit(:to, :subject, :body, :is_draft)
    end
end
