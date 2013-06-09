class EmailsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    return redirect_to :back if params[:email].empty?
    Email.create!(email: params[:email])

    respond_to do |format|
        format.html { redirect_to :back }
    end
  end

end
