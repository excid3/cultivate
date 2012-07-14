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

    respond_to do |format|
      if @company.update_attributes(params[:company])
        format.html { redirect_to @company, notice: 'Company was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end
end
