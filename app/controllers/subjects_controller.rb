class SubjectsController < ApplicationController


     
      
  def new
    @subject = Subject.new
  end

=begin 
guardando los datos 
=end

  def create 

    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to @subject
    else
      render 'new'
    end

    @note = Note.find(params[:note_id])
    @subject = @note.subjects.create(params[:subject])
    redirect_to note_path(@note)
  end
      

      
  def subject_params
    params.require(:subject).permit(:nombre, :valor)
  end
      
=begin 
mostrar datos ingresados 
=end
      
  def show
    @subject = Subject.find(params[:id])

  end
      
=begin 
listar 
=end
  def index
    @subjects = Subject.all
  end


  def edit
    @subject = Subject.find(params[:id])
  end


  def update
    @subject = Subject.find(params[:id])
    if @subject.update(subject_params)
      redirect_to @subject
    else
      render 'edit'
    end
  end
     

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    redirect_to subjects_path
  end  
end
