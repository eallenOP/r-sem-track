class SemestersController < ApplicationController
    def show
        @semester = Semester.find(params[:id])
    end
    
    def new

    end

    def create
        @semester = Semester.new(semester_params)

        @semester.save
        redirect_to @semester
    end

    private
    def semester_params
        params.require(:semester).permit(:semester_num, :year, :start_date)
    end
end
