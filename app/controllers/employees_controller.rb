class EmployeesController < ApplicationController
    #employee need new, create, delete

    def show
        @employee = Employee.find(params[:id])
    end

    def new
        @employee = Employee.new
        @companies = Company.all
    end

    def create
        @employee = Employee.create(employee_params(:name, :title, :company_id))
        if @employee.valid?
            redirect_to company_path(@employee.company)
        else
            flash[:errors] = @employee.errors.full_messages
            redirect_to new_employee_path
        end
    end

    def destroy
        @employee = Employee.find(params[:id])
        @employee.destroy
        redirect_to company_path(@employee.company)
    end

    private
    def employee_params(*args)
        params.require(:employee).permit(*args)
    end
end
