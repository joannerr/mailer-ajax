class EmailsController < ApplicationController
  before_action :all_emails, only: [:index, :create]
  # respond_to :html, :js

  def index
	respond_to do |format|
	format.html
	format.js
	end
  end

  def show
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
    @emails = Email.all
  end


end
