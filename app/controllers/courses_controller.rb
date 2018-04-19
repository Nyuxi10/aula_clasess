class CoursesController < ApplicationController


  def new
    @course = Course.new
  end



  def create 
    @course = Course.new(course_params)
      if @course.save
           redirect_to @course
      else
           render 'new'
      end
  end

  

  def course_params
    params.require(:course).permit(:nombre)
  end
  


  def show
    @course = Courses.find(params[:id])
  end
      


  def index
    @courses = Course.all
  end



  def edit
    @course = Course.find(params[:id])
  end



  def update
    @course = Course.find(params[:id])
      if @course.update(course_params)
          redirect_to @course
      else
          render 'edit'
      end
   end
  


  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path
  end

  
end
