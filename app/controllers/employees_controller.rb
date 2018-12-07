class EmployeesController < ApplicationController
    def create
        @employee = Employee.new(employee_params)
        if @employee.save!
            redirect_to company_employees_path(company)
        else
            render :new
        end
    end

    private

      def employee_params
        params.require(:employee).permit(:first_name, :last_name, :email, :company_id, :area_id)
      end
end
