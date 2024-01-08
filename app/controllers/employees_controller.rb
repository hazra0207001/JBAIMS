class EmployeesController < ApplicationController
 def index
    @employees =Employee.all

 end
 def new
      @employee =Employee.new
 end
 def create

   @employee=Employee.new(first_name: params[:employee][:first_name],
                          middle_name: params[:employee][:middle_name],
                          last_name: params[:employee][:last_name],
                          designation: params[:employee][:designation],
                          plase_of_posting: params[:employee][:plase_of_posting],
                          address: params[:employee][:address],
                          bank_id: params[:employee][:bank_id],
                          email: params[:employee][:email],
                          contact_no: params[:employee][:contact_no]

                          )
   if @employee.save
     redirect_to employees_path, notice: "Successfully Created"
   else
     render :new
   end

 end

end

