class EmployeesController < ApplicationController
    def create

    end

    private

      def employee_params
        params.require(:employee).permit(:first_name, :last_name, :email)
      end
end
