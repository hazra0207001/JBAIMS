class StudentsController< ApplicationController
  def index
    @students =Student.all
  end
  def new
    @student =Student.new
  end
  def create
    #raise params.inspect
    @student = Student.new(:name => params[:student][:name],
                           :roll_no => params[:student][:roll_no],
                           :class_name => params[:student][:class_name])
    if @student.save
      redirect_to students_path, notice: "Student Created Successfully"
    else
      render :new
    end
  end
  def edit
    @student =Student.find(params[:id])
  end
  def update
    @student =Student.find(params[:id])
    if @student.update(:name => params[:student][:name],
                        :roll_no => params[:student][:roll_no],
                        :class_name => params[:student][:class_name])
      redirect_to students_path, notice: "Information Updated successfully"
    else
      render :edit

    end
  end
  def show
    @student =Student.find(params[:id])
  end
  def destroy
    @student=Student.find(params[:id])
    if @student.destroy
      redirect_to students_path, notice:  "Student Deleted succesfully!!"
    end
  end
end
