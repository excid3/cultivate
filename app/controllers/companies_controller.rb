class CompaniesController < ApplicationController
  def show
    @company = current_company

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @company }
    end
  end

  def edit
    @company = current_company
  end

  def update
    @company = current_company

    if @company.update_attributes(params[:company])
      redirect_to root_url, notice: 'Company was successfully updated.'
    else
      render action: "edit"
    end
  end
end
