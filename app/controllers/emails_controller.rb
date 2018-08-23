class EmailsController < ApplicationController
  before_action :all_emails, only: [:index, :create]

  def index
  end

  def show
  	@email = Email.find(params[:id])
  	@email.read = true
    @email.save

    respond_to do |format|
	format.html
	format.js
	end
  end

  def destroy
  end

  private 

  def all_emails
    @email_all = Email.all

  end


end
