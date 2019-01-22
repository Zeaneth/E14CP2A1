class EmployeesController < ApplicationController
    before_action :find_company, only: [:create, :destroy]
    def create
        @employee = Employee.new(employee_params)
        @employee.company = @company
        if @employee.save!
            redirect_to @company
        else
            render :new
        end
    end

    def destroy
        @employee = Employee.find(params[:id])
        @employee.destroy

        redirect_to company_path(@company)
    end

    private
      def employee_params
        params.require(:employee).permit(:first_name, :last_name, :email, :company_id, :area_id)
      end

      def find_company
        @company = Company.find(params[:company_id])
      end
end
