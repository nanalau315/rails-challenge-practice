class CompaniesController < ApplicationController
    #company need: new, create, index, show

    def index
        @companies = Company.all
    end

    def show
        @company = Company.find(params[:id])
    end

    def new
        @company = Company.new
    end

    def create
        @company = Company.create(company_params(:name))
        if @company.valid?
            redirect_to company_path(@company)
        else
            flash[:errors] = @company.errors.full_messages
            redirect_to new_company_path
        end
    end

    def destroy
        @company = Company.find(params[:id])
        @company.destroy
        redirect_to companies_path
    end

    private
    def company_params(*args)
        params.require(:company).permit(*args)
    end

end