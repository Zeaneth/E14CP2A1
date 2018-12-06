class EmployeesController < ApplicationController
    def create
        @employee = Employee.new(employee_params)
        redirect_to company_path
    end

    private

      def employee_params
        params.require(:employee).permit(:first_name, :last_name, :email)
      end
end
