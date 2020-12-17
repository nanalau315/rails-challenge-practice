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
        redirect_to company_path(@company)
    end

    private
    def company_params(*args)
        params.require(:company).permit(*args)
    end

end