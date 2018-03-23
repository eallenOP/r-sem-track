class SemestersController < ApplicationController
    def index
        @semesters = Semester.all
    end
    
    def show
        @semester = Semester.find(params[:id])
    end
    
    def new
        @semester = Semester.new
    end

    def create
        @semester = Semester.new(semester_params)

        if @semester.save
            redirect_to @semester
        else
            render 'new'
        end
    end

    private
    def semester_params
        params.require(:semester).permit(:semester_num, :year, :start_date)
    end
end
